'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "b4fd6f7f11eae17240706fd17e0e0aab",
"assets/assets/images/dubai-permit.jpg": "59f6c0d75901e8ec3a849f2abc7802be",
"assets/assets/images/group/g1.jpg": "ba91728de9b20422d02f5f62fa59a470",
"assets/assets/images/group/g10.jpg": "16e19455db9d9b9e445dfa21f9ecaf4e",
"assets/assets/images/group/g2.jpg": "081d2490e2398706ae083ce49881b7e5",
"assets/assets/images/group/g3.jpg": "3d177bd27dabe48d680b6a5a85c7afcc",
"assets/assets/images/group/g4.jpg": "63462608a023ed989dca4fee44f540e6",
"assets/assets/images/group/g5.jpg": "39ab1781496f368d1f58ff2d72d9fe11",
"assets/assets/images/group/g6.jpg": "39a0982e89146f7e482f40b6a7d2cea1",
"assets/assets/images/group/g7.jpg": "4ca67bf3f1e7f29a76f93c25e6dffc46",
"assets/assets/images/group/g8.jpg": "702d02a67d9f58c7e176225019195a75",
"assets/assets/images/group/g9.jpg": "3927c170f1f512237147f306ea64d9b6",
"assets/assets/images/home/all.jpg": "35f70978c21882c41a62a15c5285e01a",
"assets/assets/images/home/contact.jpg": "eff44eaa5b2c62dd9c1ba62069269ee4",
"assets/assets/images/home/cust2.jpg": "f06fcba9275f806dbcb4e223a5a5efc2",
"assets/assets/images/home/customise.jpg": "a8a4d035cf94e8ab1536e88580b8c68b",
"assets/assets/images/home/customise2.jpg": "cdf573b3b5f96505bd267669cddd6b20",
"assets/assets/images/home/fix.jpg": "6094621ec20f0059039da1f7e3d49743",
"assets/assets/images/home/group1.jpg": "df14a238054edf7814fe960c225d08e1",
"assets/assets/images/home/hotel.png": "c70463f65850f202527f3e9ba95ed90c",
"assets/assets/images/home/int1.jpg": "08ac0c1f5df40ebd48c8791aa213ee94",
"assets/assets/images/home/int2.jpg": "c86cb6dc8dad708a04bc275f9bd62a18",
"assets/assets/images/index.png": "9c6a01a4424908115028ef3dcb60b718",
"assets/assets/images/Leh1.jpg": "0800c6584cd6eaa15d31c36cfa262f26",
"assets/assets/images/loading.gif": "f8f8000dfbd8be0ea70f3317e99f7d59",
"assets/assets/images/logo.png": "9a5ff09f716a859afe98d083df28c84c",
"assets/assets/images/pil.jpg": "5864fff82895010718f546fac71833ed",
"assets/assets/images/s.png": "80c9ba073c21d41d773119b9ad05f3c6",
"assets/assets/images/uncle.png": "058ba9dcb08f83f56c098afc0e3f0a0e",
"assets/FontManifest.json": "f7ce03dc3452373addc42ad75e63dc4f",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "afc0a184b142e2cf3739ad53a86d3f67",
"assets/packages/eva_icons_flutter/lib/fonts/evaicons.ttf": "b600c99b39c9837f405131463e91f61a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "30ca437b74918246b1a411d625c37efa",
"/": "30ca437b74918246b1a411d625c37efa",
"main.dart.js": "e636eece5e27fadb43137a6d37346257",
"manifest.json": "1392b35b2fb37d7794414b5e9fb18ee6",
"version.json": "ef0565287c4f86ea24b8b69f40eea00d"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
