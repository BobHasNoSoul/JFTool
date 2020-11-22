function changeImg(imgNumber)	{
	var myImages = ["/web/fanart/1.jpg", "/web/fanart/2.jpg", "/web/fanart/3.jpg", "/web/fanart/4.jpg", "/web/fanart/5.jpg", "/web/fanart/6.jpg"]
	var imgShown = document.body.style.backgroundImage;
	var newImgNumber =Math.floor(Math.random()*myImages.length);
        var sheet = window.document.styleSheets[0];
        sheet.insertRule('#loginPage { background: url('+myImages[newImgNumber]+') !important; background-size: cover !important; }', sheet.cssRules.length)
}
window.onload=changeImg;
