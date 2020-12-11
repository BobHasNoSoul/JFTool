#!/bin/bash
echo "Please Select your version"
PS3='Please enter your choice: '
options=("Win WSL 10.5" "Win WSL 10.6" "Win WSL 10.7" "Win Cygwin 10.5" "Win Cygwin 10.6" "Win Cygwin 10.7" "Linux 10.5" "Linux 10.6" "Linux 10.7" "Linux Docker 10.5" "Linux Docker 10.6" "Linux Docker 10.7" "Win Docker WSL 10.5" "Win Docker WSL 10.6" "Win Docker WSL 10.7" "Win Docker Cygwin 10.5" "Win Docker Cygwin 10.6" "Win Docker Cygwin 10.7")
select opt in "${options[@]}"
do
    case $opt in

	"Win WSL 10.5")
	  ./JFTool-10.5.x/tool-win.sh
	  ;;
        "Win WSL 10.6")
          ./JFTool-10.6.x/tool-win.sh
          ;;
        "Win WSL 10.7")
          ./JFTool-10.7.x/tool-win.sh
          ;;
        "Win Cygwin 10.5")
          ./JFTool-10.5.x/tool-cygwin.sh
          ;;
        "Win Cygwin 10.6")
          ./JFTool-10.6.x/tool-cygwin.sh
          ;;
        "Win Cygwin 10.7")
          ./JFTool-10.7.x/tool-cygwin.sh
          ;;
        "Linux 10.5")
          ./JFTool-10.5.x/tool.sh
          ;;
        "Linux 10.6")
          ./JFTool-10.6.x/tool.sh
          ;;
        "Linux 10.7")
          ./JFTool-10.7.x/tool.sh
          ;;
        "Linux Docker 10.5")
          ./JFTool-10.5.x/tool-dockerlinux.sh
          ;;
        "Linux Docker 10.6")
          ./JFTool-10.6.x/tool-docker-linux.sh
          ;;
        "Linux Docker 10.7")
          ./JFTool-10.7.x/tool-docker-linux.sh
          ;;
        "Win Docker WSL 10.5")
          ./JFTool-10.5.x/tool-dockerwsl.sh
          ;;
        "Win Docker WSL 10.6")
          ./JFTool-10.6.x/tool-docker-wsl.sh
          ;;
        "Win Docker WSL 10.7")
          ./JFTool-10.7.x/tool-docker-wsl.sh
          ;;
        "Win Docker Cygwin 10.5")
          ./JFTool-10.5.x/tool-dockercygwin.sh
          ;;
        "Win Docker Cygwin 10.6")
          ./JFTool-10.6.x/tool-docker-cygwin.sh
          ;;
        "Win Docker Cygwin 10.7")
          ./JFTool-10.7.x/tool-docker-cygwin.sh
          ;;
	*) echo "invalid option $REPLY";;
    esac
done
