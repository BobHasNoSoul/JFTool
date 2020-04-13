#!/bin/bash
echo "   __       _ _        __ _                       "
echo "   \ \  ___| | |_   _ / _(_)_ __                  "
echo "    \ \/ _ \ | | | | | |_| | '_ \                 "
echo " /\_/ /  __/ | | |_| |  _| | | | |                "
echo " \___/ \___|_|_|\__, |_| |_|_| |_|                "
echo "                |___/                             "
echo "   ___          _                  _              "
echo "  / __\   _ ___| |_ ___  _ __ ___ (_)_______ ____ "
echo " / / | | | / __| __/ _ \|  _   _ \| |_  / _ \  __|"
echo "/ /__| |_| \__ \ || (_) | | | | | | |/ /  __/ |   "
echo "\____/\__,_|___/\__\___/|_| |_| |_|_/___\___|_|   "
echo ""
echo "Jellyfin Customizer v0.5b"
echo ""
echo "Note: THIS IS FOR 1.4.X and 1.5.x"
echo ""
echo "THIS VERSION IS FOR WINDOWS (64-BIT STANDARD INSTALLS)"
echo ""
echo "Written By: u/HeroinPigeon"
echo ""
echo "Thanks to the Jellyfin Devs and community at r/Jellyfin"
echo ""
echo "This tool is not to take away devs work but simply to"
echo "Make the user have more control over the look of their setup"
echo "I cannot stress how much the devs do for us all."
echo ""
echo "============================================================"
echo ""
PS3='Please enter your choice: '
options=("Add Custom Link" "Change Page Title" "Change Icons" "Add icon to sidebar" "Remove icon from sidebar" "Remove Sidebar Link" "Add logo above login" "Backup current icons" "Change to original jellyfin icons" "Add snow animation" "Add Heart animation" "Add Halloween animation" "Add Fireworks" "Add Pattys day" "Remove Animations" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Add Custom Link")
	  echo ""
	  echo "All links should be added in reverse order (bottom to top)"
	  echo "if you wish them to be ordered," 
	  echo "you can change this manually if needed"
	  echo ""
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname
	  customlinkpt1="html += "
	  customlinkpt2="'<a is="
	  customlinkpt3='"emby-linkbutton" class="navMenuOption lnkMediaFolder" href="'
	  customlinkpt4="${customlink}"
	  customlinkpt5='"><i class="md-icon navMenuOptionIcon"><img src="'
	  customlinkpt6="${customlinkicon}"
	  customlinkpt7='"></i><span class="navMenuOptionText">'
	  customlinkpt8="' + globalize.translate("
	  customlinkpt8b='"'
	  customlinkpt9=${customlinkname}
	  customlinkpt10='") + "</span></a>";'
	  customlink2=${customlinkpt1}${customlinkpt2}${customlinkpt3}${customlinkpt4}${customlinkpt5}${customlinkpt6}${customlinkpt7}${customlinkpt8}${customlinkpt8b}${customlinkpt9}${customlinkpt10}
	  customlink4="\ \ \ \ \ \ \ \ ${customlink2}"
	  sudo sed -i "/libraries are added here/i \
	  ${customlink4}" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js"
	  ;;
	"Change Page Title")
	  echo "what is the current name of your server"
	  echo "(this appears in the top of your browser window as a page title)"
	  echo "this is case-sensitive (Default 'Jellyfin')"
	  read currenttitle
	  echo "What do you want to call your server?"
	  read newtitle
	  echo "One Moment Please"
	  sudo sed -i -e "s/$currenttitle/$newtitle/g" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js"
	  sudo sed -i -e "s/$currenttitle/$newtitle/g" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/manifest.json"
	  sudo sed -i -e "s/$currenttitle/$newtitle/g" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  ;;
	"Change Icons")
	  echo "favicon.png"
	  sudo cp ./images/favicon.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./images/favicon.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/favicon.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/icon-transparent.png"
	  echo "favicon180.png"
	  sudo cp ./images/favicon180.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./images/favicon180.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/favicon180.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "logodark.png"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/banner-dark.png"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/icon-transparent.png"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon.png"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon.png"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon72.png"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon114.png"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon144.png"
	  sudo cp ./images/logodark.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon512.png"
	  echo "logowhite.png"
	  sudo cp ./images/logowhite.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/logowhite.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./images/logowhite.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/banner-light.png"
	  echo "touchicon.png"
	  sudo cp ./images/touchicon.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/touchicon.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./images/touchicon.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "touchicon72.png"
	  sudo cp ./images/touchicon72.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/touchicon72.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./images/touchicon72.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "touchicon114.png"
	  sudo cp ./images/touchicon114.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/touchicon114.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./images/touchicon114.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "touchicon144.png"
	  sudo cp ./images/touchicon144.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/touchicon144.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./images/touchicon144.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "touchicons512"
	  sudo cp ./images/touchicon512.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/touchicon512.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./images/touchicon512.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "favicon.ico"
	  sudo cp ./images/favicon.ico "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./images/favicon.ico "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
  	  sudo cp ./images/favicon.ico "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  ;;
	"Add icon to sidebar")
	  sidebarlogo="\ \ \ \ \ \ \ \ html += '<img src="
	  sidebarlogo2='"/web/logowhite.png" width=250px style="padding: 5px;display:block; margin-left: auto; margin-right: auto;"'
          sidebarlogo3=">';"
	  sidebarlogo4=${sidebarlogo}${sidebarlogo2}${sidebarlogo3}
	  echo "Now adding the code to make your logowhite.png a logo at the top of your sidebar"
          sudo sed -i "/ButtonHome/i \
          ${sidebarlogo4}" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js"
	  ;;
	"Remove icon from sidebar")
          sudo sed -i "/logowhite.png/d" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js"
	  ;;
	"Remove Sidebar Link")
	  echo "Please Input the exact link address to remove without https:// or slashes (e.g. myspace.com)"
	  read removelink
          sudo sed -i "/${removelink}/d" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js" 
	  ;;
	"Add logo above login")
	  echo "adding the logo"
	  logowhite='<img src="/web/logowhite.png" width=400px style="padding: 5px;display:block; margin-left: auto; margin-right: auto;">'
          sudo sed -i "/manualLoginForm hide/i \
          <div class="Login-Logo">" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/login.html"
          sudo sed -i "/Login-Logo/a \
          ${logowhite}" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/login.html"
	  sudo sed -i "/logowhite.png/a \
	  </div>" "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/login.html"
	  echo "(Optional) to remove the icon in the top left top bar on the login page please login to the admin panel"
	  echo "General tab and insert the following under custom css"
	  echo ""
	  echo "For 10.4.x add:"
	  echo ".listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}"
	  echo "div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }"
	  echo " "
#	  echo "adding the css to remove dual icons on login page"
#	  if [ -f "/etc/jellyfin/branding.xml" ]; then 
#      echo -e "\e[32m/etc/jellyfin/branding.xml located\e[39m"
#      sudo sed -i "/CustomCSS/a \ .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}" /etc/jellyfin/branding.xml
#	   sudo sed -i "/CustomCSS/a \ div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }" /etc/jellyfin/branding.xml
#      else
#      echo "branding.xml is not located in /etc/jellyfin/branding.xml (do not worry this is not an error)"
#      fi
#     if [ -f "/root/.config/jellyfin/branding.xml" ]; then 
#      echo -e "\e[32m/root/.config/jellyfin/branding.xml located (this means you might be running jellyfin as root.. you shouldn't do this but i wont tell if you don't)\e[39m"
#      sudo sed -i "/CustomCSS/a \ .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}" /root/.config/jellyfin/branding.xml
#      sudo sed -i "/CustomCSS/a \ div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }" /root/.config/jellyfin/branding.xml
#                                  
#      else
#      echo "branding.xml is not located in /root/.config/jellyfin/branding.xml (do not worry this is not an error)"
#      fi
#     if [ -f "/home/jellyfin/.config/jellyfin/branding.xml" ]; then 
#      echo -e "\e[32m/home/jellyfin/.config/jellyfin/branding.xml located\e[39m"
#      sudo sed -i "/CustomCSS/a \ .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}" /home/jellyfin/.config/jellyfin/branding.xml
#	   sudo sed -i "/CustomCSS/a \ div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }" /home/jellyfin/.config/jellyfin/branding.xml
#      else
#      echo "branding.xml is not located in /home/jellyfin/.config/jellyfin/branding.xml (this is not an error)"
#      fi
#     if [ -f "${HOME}/.config/jellyfin/branding.xml" ]; then 
#      echo -e "\e[32m${HOME}/.config/jellyfin/branding.xml located\e[39m"
#      sudo sed -i "/CustomCSS/a \ .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}" ${HOME}/.config/jellyfin/branding.xml
#	   sudo sed -i "/CustomCSS/a \ div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }" ${HOME}/.config/jellyfin/branding.xml
#      else
#      echo "branding.xml is not located in ${HOME}/.config/jellyfin/branding.xml (this is not an error)"
#      fi
#      echo "if you do not see a located message above this line you may need to find the location of your branding.xml and send u/heroinpigeon a message because something has gone very.. very wrong."
	  echo "once you have done that you can click save on web admin page"
	  ;;
	  	"Backup current icons")
	  mkdir ./backedupimages
	  sudo cp "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/*.png" ./backedupimages/
	  sudo cp "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/*.png" ./backedupimages/
	  sudo cp "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/*.png" ./backedupimages/
	  sudo cp "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/favicon.ico" ./backedupimages/favicon.ico
	  echo "Done"
	  ;;
	"Change to original jellyfin icons")
	  sudo cp ./originalimages/*.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./originalimages/*.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  sudo cp ./originalimages/*.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  sudo cp ./originalimages/favicon.ico "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/favicon.ico"
	  ;; 
	"Add snow animation")
      sudo cp ./animation/videoosd104.css.fix "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  sudo cp ./animation/videoosd.css.fix "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
	  sudo cp ./animation/stylefix.css "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"	
	  sudo cp ./animation/snow.html "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  echo "Added snow (note you may have to change your page title again from 'Jellyfin')"
	  ;;
	"Add Heart animation")
      sudo cp ./animation/videoosd104.css.fix "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  sudo cp ./animation/videoosd.css.fix "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
	  sudo cp ./animation/stylefix.css "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"
	  sudo cp ./animation/valentines.html "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  echo "Added hearts (note you may have to change your page title again from 'Jellyfin')"
	  ;;
	"Add Halloween animation")
      sudo cp ./animation/videoosd104.css.fix "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  sudo cp ./animation/stylefix.css "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"	
	  sudo cp ./animation/videoosd.css.fix "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
	  sudo cp ./animation/halloween.html "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  sudo cp ./animation/ghost_20x20.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  sudo cp ./animation/bat_20x20.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
  	  sudo cp ./animation/pumpkin_20x20.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
  	  echo "Added Halloween animations (note you may have to change your page title again from 'Jellyfin')"
	  ;;
	"Add Fireworks")
	  sudo cp ./animation/stylefix.css "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"	
	  sudo cp ./animation/videoosd.css.fix "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
      sudo cp ./animation/fireworks.html "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
      sudo cp ./animation/fireworks.css "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/fireworks.css"
      echo "Added fireworks (note you may have to change your page title again from 'Jellyfin')"
      ;;
    "Add Pattys day")
      sudo cp ./animation/videoosd104.css.fix "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  sudo cp ./animation/stylefix.css "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"
	  sudo cp ./animation/videoosd.css.fix "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
      sudo cp ./animation/pattysday.html "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  sudo cp ./animation/lep_30x30.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
  	  sudo cp ./animation/clover_20x20.png "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/"
      echo "Added Pattys day (note you may have to change your page title again from 'Jellyfin')"
      ;;
	"Remove Animations")
	  sudo cp ./animation/videoosd104.css.original "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  sudo cp ./animation/videoosd.css.original "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
	  sudo cp ./animation/stylestock.css "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"
	  sudo cp ./animation/stockify.html "/mnt/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  echo "Removed animations (note you may have to change your page title again)"
	  ;; 
 	"Quit")
	  break
	  ;;
	*) echo "invalid option $REPLY";;
    esac
done
