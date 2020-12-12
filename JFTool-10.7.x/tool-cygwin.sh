#!/bin/bash
Vercheck=4.0a
echo "        ______________            __"
echo "       / / ____/_  __/___  ____  / /"
echo "  __  / / /_    / / / __ \/ __ \/ / "
echo " / /_/ / __/   / / / /_/ / /_/ / /  "
echo " \____/_/     /_/  \____/\____/_/   "
echo "                     "
echo ""
echo "JFTool v${Vercheck} -- CYGWIN WINDOWS"
echo ""
echo "This is for jellyfin 10.7.x versions"
echo "untested but should work for 10.7.0 RC1"
echo ""
echo "Disclaimer: This tool is provided as-is and I cannot be held"
echo "accountable for any hair-loss, data-loss, broken"
echo "relationships or nuclear winter."
echo ""
echo "============================================================"
echo ""
PS3='Please enter your choice: '
options=("Logo in sidebar" "One custom link in side bar" "Two custom link in side bar" "Three custom link in side bar" "Four custom link in side bar" "Logo and One custom link in side bar" "Logo and Two custom link in side bar" "Logo and Three custom link in side bar" "Logo and Four custom link in side bar" "Change Page Title" "Change Icons" "add Dynamic login background" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	
	"Logo in sidebar")
	  echo "Adding logo to the side bar"
	  cp ./JFTool-10.7.x/modded/side-menu/libraryMenu0linksjusticon.js" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  ;;
    "One custom link in side bar")
	  echo ""
	  echo ""
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url: (e.g https://yourjellyfin.address/web/iconfilename.png")"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  cp ./JFTool-10.7.x/modded/side-menu/libraryMenu1link.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~TOPLINKHERE~$customlink1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  ;;
    "Two custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png")"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  cp ./JFTool-10.7.x/modded/side-menu/libraryMenu2links.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~TOPLINKHERE~$customlink1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~2NDLINKHERE~$customlink2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  ;;
    "Three custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  cp ./JFTool-10.7.x/modded/side-menu/libraryMenu3links.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~TOPLINKHERE~$customlink1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~2NDLINKHERE~$customlink2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~3RDLINKHERE~$customlink3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
   	 ;;
	 "Four custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "3rd Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink4
	  echo "Icon url:"
	  read customlinkicon4
	  echo "Link name:"
	  read customlinkname4
	  echo ""
	  cp ./JFTool-10.7.x/modded/side-menu/libraryMenu4links.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~TOPLINKHERE~$customlink1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~2NDLINKHERE~$customlink2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~3RDLINKHERE~$customlink3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~4THLINKHERE~$customlink4~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~4THLINKICONHERE~$customlinkicon4~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~4THLINKNAMEHERE~$customlinkname4~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
   	 ;;
	 "Logo and One custom link in side bar")
	  echo ""
	  echo ""
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
      echo ""
	  cp ./JFTool-10.7.x/modded/side-menu/libraryMenu1linksandicon.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~TOPLINKHERE~$customlink1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
   	 ;;
	 "Logo and Two custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  cp ./JFTool-10.7.x/modded/side-menu/libraryMenu2linksandicon.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~TOPLINKHERE~$customlink1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~2NDLINKHERE~$customlink2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
   	 ;;
	 "Logo and Three custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  echo ""
	  cp ./JFTool-10.7.x/modded/side-menu/libraryMenu3linksandicon.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~TOPLINKHERE~$customlink1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~2NDLINKHERE~$customlink2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~3RDLINKHERE~$customlink3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
   	 ;;
	 "Logo and Four custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "3rd Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink4
	  echo "Icon url:"
	  read customlinkicon4
	  echo "Link name:"
	  read customlinkname4
	  echo ""
	  cp ./JFTool-10.7.x/modded/side-menu/libraryMenu4linksandicon.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~TOPLINKHERE~$customlink1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~2NDLINKHERE~$customlink2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~3RDLINKHERE~$customlink3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~4THLINKHERE~$customlink4~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~4THLINKICONHERE~$customlinkicon4~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
      sed -i "s~4THLINKNAMEHERE~$customlinkname4~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
   	 ;;
	"Change Page Title")
	  echo "what is the current name of your server"
	  echo "(this appears in the top of your browser window as a page title)"
	  echo "this is case-sensitive (Default 'Jellyfin')"
	  read currenttitle
	  echo "What do you want to call your server?"
	  read newtitle
	  echo "One Moment Please"
	  sed -i "s~$currenttitle~$newtitle~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/main.bundle.js"
	  sed -i "s~$currenttitle~$newtitle~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/manifest.json"
	  sed -i "s~$currenttitle~$newtitle~g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  ;;
	"Change Icons")
	  echo "favicon.png"
	  cp ./JFTool-10.7.x/images/favicon.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./JFTool-10.7.x/images/favicon.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/icon-transparent.png"
	  echo "logodark.png"
	  cp ./JFTool-10.7.x/images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/banner-dark.png"
	  cp ./JFTool-10.7.x/images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/icon-transparent.png"
	  echo "logowhite.png"
	  cp ./JFTool-10.7.x/images/logowhite.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/banner-light.png"
	  echo "favicon.ico"
	  cp ./JFTool-10.7.x/images/favicon.ico "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  ;;
   "add Dynamic login background")
	echo ""
	echo "This will make your background on the login page change between 6 pictures in the" 
	echo "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/fanart/ dir and it will be a random one on each reload"
  	echo ""
	echo "copying files now"
	echo ""
	cp -r ./JFTool-10.7.x/fanart "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/fanart"
	echo "injecting the cssbuster.js"
    loginbackjs='</script><script src="fanart/cssbuster.js"></script>'
    scriptkey="</script>"
    sed -i "s|${scriptkey}| \
    ${loginbackjs}|g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	echo "injection complete"
	echo ""
	echo "done"
    ;;
	"Quit")
	  break
	  ;;
	*) echo "invalid option $REPLY";;
    esac
done
