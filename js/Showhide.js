function findTableContainer (element) {
  while (element) {
    if (element.tagName.toLowerCase() == 'table')
      return element;
    element = element.parentNode;
  } return null;
}
function showRows (element) {
    var table = findTableContainer(element);
    if (table && table.rows) {    
            table.style.display = 'block';
   }
}
function hideRows (element) {
    var table = findTableContainer(element);
    if (table && table.rows) {    
            table.style.display = 'none';
   }
}
function ShowHide(value)
{
	for (i=1;i<21;i++)
	{
		if (i == value)
		{
			//document.all("menu" + i).style.backgroundColor = "#F06601"
			showRows(document.all("t" + i))
		}
		else
		{
			hideRows(document.all("t" + i))
		}
	}
}
