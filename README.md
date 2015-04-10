#Squid TWRP tree for Moto E LTE (2015)
* Based off https://github.com/cybojenix/android_device_motorola_surnia

##Dependencies:
(you probably don't need most of these)
````
sudo apt-get install bison build-essential curl flex git gnupg gperf libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop openjdk-6-jdk openjdk-6-jre pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev
sudo apt-get install g++-multilib gcc-multilib lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev
````
You also need the repo tool for cloning Android source trees.

##Set up and get the repo:
````
mkdir ~/omni-twrp-tree
cd ~/omni-twrp-tree
repo init -u https://github.com/sultanqasim/twrp_recovery_manifest.git -b android-5.1
mkdir -p .repo/local_manifests
wget https://raw.githubusercontent.com/sultanqasim/twrp_recovery_manifest/android-5.1/styx.xml -O .repo/local_manifests/styx.xml
repo sync
````

##Building:
````
source build/envsetup.sh
lunch omni_surnia-userdebug
make installclean
make -j10 recoveryimage
````
Replace omni_surnia-userdebug with omni_otus-userdebug if you want to build a otus recovery instead.
