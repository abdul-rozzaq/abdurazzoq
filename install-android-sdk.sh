#!/bin/bash


clear




echo "  ___   _          _                                             "
echo " / _ \ | |        | |                                            "
echo "/ /_\ \| |__    __| | _   _  _ __   __ _  ____ ____  ___    __ _ "
echo "|  _  || '_ \  / _' || | | || '__| / _' ||_  /|_  / / _ \  / _' |"
echo "| | | || |_) || (_| || |_| || |   | (_| | / /  / / | (_) || (_| |"
echo "\_| |_/|_.__/  \__,_| \__,_||_|    \__,_|/___|/___| \___/  \__, |"
echo "                                                              | |"
echo "                                                              |_|"

sleep 3

fileName="commandlinetools-linux-11076708_latest.zip"
sdkpath=~/.android/cmdline-tools/
menu=("Install and Configure sdk manager" "Install Java(jdk and jre) 17")

PS3="Select item please: "
select slc in "${menu[@]}" Quit

do
    case $REPLY in
        1)
            rm -rf $fileName
            wget "https://dl.google.com/android/repository/$fileName"

            clear

            echo "Extracting files ..."
            unzip -q $fileName
            mv cmdline-tools "tools"
            sleep 1



            echo "Creating directories ..."
            mkdir -p $sdkpath
            sleep 1


            echo "Moving directories ..."
            mv "tools" $sdkpath 
            sleep 1

            echo "-----------------------------------------------------------------------" >> ~/.zshrc
            echo "export ANDROID_HOME=\$HOME/.android" >> ~/.zshrc
            echo "" >> ~/.zshrc
            echo "export PATH=\$HOME/.pub-cache/bin:\$PATH" >> ~/.zshrc
            echo "" >> ~/.zshrc
            echo "export PATH=\$ANDROID_HOME/cmdline-tools/latest/bin/:\$PATH" >> ~/.zshrc
            echo "export PATH=\$ANDROID_HOME/cmdline-tools/tools/bin/:\$PATH" >> ~/.zshrc
            echo "export PATH=\$ANDROID_HOME/emulator/:\$PATH" >> ~/.zshrc
            echo "export PATH=\$ANDROID_HOME/platform-tools/:\$PATH" >> ~/.zshrc


            echo "export ANDROID_HOME=\$HOME/.android" >> ~/.bashrc
            echo "" >> ~/.bashrc
            echo "export PATH=\$HOME/.pub-cache/bin:\$PATH" >> ~/.bashrc
            echo "" >> ~/.bashrc
            echo "export PATH=\$ANDROID_HOME/cmdline-tools/latest/bin/:\$PATH" >> ~/.bashrc
            echo "export PATH=\$ANDROID_HOME/cmdline-tools/tools/bin/:\$PATH" >> ~/.bashrc
            echo "export PATH=\$ANDROID_HOME/emulator/:\$PATH" >> ~/.bashrc
            echo "export PATH=\$ANDROID_HOME/platform-tools/:\$PATH" >> ~/.bashrc



            echo "Do you want to install \"platform-tools\" (1 / 0)"
            read input

            source ~/.zshrc

            if [ $input = 1 ]; then
                sdkmanager "platform-tools" "platforms;android-29"
                sdkmanager "build-tools;29.0.3"
            fi

            break
            ;;
        2)
            echo "Installing openjdk-17-jdk ..."
            sudo apt install openjdk-17-jdk
            sleep 1

            echo "Installing openjdk-17-jre ..."
            sudo apt install openjdk-17-jre
            sleep 1
            
            break
            ;;
        $((${#menu[@]}+1))) echo "We're done"; break ;;
    esac
done