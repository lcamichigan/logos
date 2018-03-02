all : \
	Eventbrite.png    \
	Facebook.png      \
	favicon.ico       \
	GitHub.png        \
	Instagram.png     \
	LinkedIn.png      \
	MailChimp.png     \
	Twitter.png       \
	WebsiteHeader.png \
	Xero.png

Eventbrite.png : Eventbrite.asy
	asy -outformat png -noView Eventbrite.asy

Facebook.png : Facebook.asy
	asy -outformat png -noView Facebook.asy

favicon.ico : favicon.asy
	asy -outformat png -noView favicon.asy
	convert favicon-16.png favicon-32.png favicon-64.png favicon-128.png favicon-256.png favicon.ico
	rm -f favicon-*.png

GitHub.png : GitHub.asy
	asy -outformat png -noView GitHub.asy

Instagram.png : Instagram.asy
	asy -outformat png -noView Instagram.asy

LinkedIn.png : LinkedIn.asy
	asy -outformat png -noView LinkedIn.asy

MailChimp.png : MailChimp.sh MailChimp.tex
	./MailChimp.sh

Twitter.png : Twitter.asy
	asy -outformat png -noView Twitter.asy

WebsiteHeader.png : WebsiteHeader.asy
	asy -outformat png -noView WebsiteHeader.asy

Xero.png : Xero.asy
	asy -outformat png -noView Xero.asy

clean :
	rm -f favicon.ico *.png
