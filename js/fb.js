    (function(w2b){
        w2b(document).ready(function(){
            var $dur = 'medium'; // Duration of Animation
            w2b('#fbplikebox').css({right: -250, 'top' : 160})
            w2b('#fbplikebox').hover(function () {
                w2b(this).stop().animate({
                    right: 0
                }, $dur);
            }, function () {
                w2b(this).stop().animate({
                    right: -250
                }, $dur);
            });
            w2b('#fbplikebox').show();
        });
    })(jQuery);
	
	(function(w2b){
        w2b(document).ready(function(){
            var $dur = 'medium'; // Duration of Animation
            w2b('#fbplikebox2').css({left: -250, 'top' : 220})
            w2b('#fbplikebox2').hover(function () {
                w2b(this).stop().animate({
                    left:0
					
                }, $dur);
            }, function () {
                w2b(this).stop().animate({
                    left: -250
                }, $dur);
            });
            w2b('#fbplikebox2').show();
        });
    })(jQuery);