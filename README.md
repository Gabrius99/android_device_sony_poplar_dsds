Device configuration for Sony Xperia XZ1 Dual SIM (poplar_dsds)
========================================================

Description
-----------

This Device Tree used to compile Pixel Experience 10 for Sony XZ1 Dual SIM.
It's forked from `whatawurst/android_device_sony_poplar_dsds` and slighty modified to support Pixel Experience.

How to build Pixel Experience
-----------------------------

* Downlaod repo and configure it

        mkdir -p ~/bin
        curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
        chmod a+x ~/bin/repo

* Prepare your folder and sync Pixel Experience source code:

        mkdir -P ~/android/pe-plus
        cd ~/android/pe-plus
        repo init -u https://github.com/PixelExperience/manifest -b ten-plus
        repo sync --force-sync

* Create and modify pixel.xml to add all the dependencies needed to compile Pixel Experience:

        cd ~/android/pe-plus/.repo
        mkdir local_manifests && cd local_manifests
        gedit pixel.xml (or create it manually inside local_manifests)

* Add:

        <?xml version="1.0" encoding="UTF-8"?>
            <manifest>
                <project name="whatawurst/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" revision="lineage-17.1" />
                <project name="whatawurst/android_device_sony_common-treble" path="device/sony/common-treble" remote="github" revision="lineage-17.1" />
                <project name="whatawurst/android_device_sony_yoshino"  path="device/sony/yoshino" remote="github" revision="lineage-17.1" />
                <project name="Gabrius99/android_device_sony_poplar_dsds" path="device/sony/poplar_dsds" remote="github" revision="pe-10" />
                <project name="Gabrius99/android_vendor_sony_poplar_dsds" path="vendor/sony/poplar_dsds" remote="github" revision="q" />
            </manifest>

* Now you have all required sources! Make the ROM!

        cd ~/android/pe-plus
        source build/envsetup.sh
        lunch aosp_poplar_dsds-userdebug
        make bacon -j($nproc --all)

* We suggest 16 GB of RAM to avoid issues during building process.

XDA-Developers Thread
---------------------

[Here](https://forum.xda-developers.com/xperia-xz1/development/rom-unofficial-pixelexperience-plus-t4145661) you can discuss about this ROM development.