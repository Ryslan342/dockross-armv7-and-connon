# For quickly reproduce my error

## Description
When I try to install dependencies, I get an error.
This happens inside the container from "dockcross/linux-armv7-lts".

Can you please help me fix it, or tell me whom to contact?
- Dockcross team
- Library Developers
- ....

## Fast check

````shell
git clone https://github.com/Ryslan342/dockross-armv7-and-connon.git ./reproduse_bug
cd ./reproduse_bug

# Error at this moment
docker build -f=./arm7/Dockerfile -t=reproduce_bug .

# 
dockcross-linux-armv7-lts --image reproduce_bug "source build-bin.sh"


````

## My logs 

````text
Deploying '<unknown> Dockerfile: arm7/Dockerfile'…
Building image…
Preparing build context archive…
[==================================================>]94/94 files
Done

Sending build context to Docker daemon…
[==================================================>] 79,32kB
Done

Step 1/4 : FROM dockcross/linux-armv7-lts
 ---> 95f79f51f015
Step 2/4 : WORKDIR /work
 ---> Using cache
 ---> 0163f8c137d2
Step 3/4 : COPY ./ ./
 ---> 95c4eea3b7f4
Step 4/4 : RUN /bin/bash -c "source ./arm7/build-image.sh"
 ---> Running in cc883fa2517f
Requirement already satisfied: conan in /usr/local/lib/python3.9/dist-packages (1.52.0)
Requirement already satisfied: Jinja2<4.0.0,>=3.0 in /usr/local/lib/python3.9/dist-packages (from conan) (3.1.2)
Requirement already satisfied: node-semver==0.6.1 in /usr/local/lib/python3.9/dist-packages (from conan) (0.6.1)
Requirement already satisfied: requests<3.0.0,>=2.25 in /usr/local/lib/python3.9/dist-packages (from conan) (2.28.1)
Requirement already satisfied: urllib3<1.27,>=1.26.6 in /usr/local/lib/python3.9/dist-packages (from conan) (1.26.12)
Requirement already satisfied: colorama<0.5.0,>=0.3.3 in /usr/local/lib/python3.9/dist-packages (from conan) (0.4.5)
Requirement already satisfied: PyYAML<=6.0,>=3.11 in /usr/local/lib/python3.9/dist-packages (from conan) (6.0)
Requirement already satisfied: python-dateutil<3,>=2.7.0 in /usr/local/lib/python3.9/dist-packages (from conan) (2.8.2)
Requirement already satisfied: bottle<0.13,>=0.12.8 in /usr/local/lib/python3.9/dist-packages (from conan) (0.12.23)
Requirement already satisfied: PyJWT<3.0.0,>=2.4.0 in /usr/local/lib/python3.9/dist-packages (from conan) (2.5.0)
Requirement already satisfied: six<=1.16.0,>=1.10.0 in /usr/local/lib/python3.9/dist-packages (from conan) (1.16.0)
Requirement already satisfied: pygments<3.0,>=2.0 in /usr/local/lib/python3.9/dist-packages (from conan) (2.13.0)
Requirement already satisfied: tqdm<5,>=4.28.1 in /usr/local/lib/python3.9/dist-packages (from conan) (4.64.1)
Requirement already satisfied: patch-ng<1.18,>=1.17.4 in /usr/local/lib/python3.9/dist-packages (from conan) (1.17.4)
Requirement already satisfied: fasteners>=0.14.1 in /usr/local/lib/python3.9/dist-packages (from conan) (0.18)
Requirement already satisfied: distro<=1.6.0,>=1.0.2 in /usr/local/lib/python3.9/dist-packages (from conan) (1.6.0)
Requirement already satisfied: pluginbase>=0.5 in /usr/local/lib/python3.9/dist-packages (from conan) (1.0.1)
Requirement already satisfied: MarkupSafe>=2.0 in /usr/local/lib/python3.9/dist-packages (from Jinja2<4.0.0,>=3.0->conan) (2.1.1)
Requirement already satisfied: charset-normalizer<3,>=2 in /usr/local/lib/python3.9/dist-packages (from requests<3.0.0,>=2.25->conan) (2.1.1)
Requirement already satisfied: certifi>=2017.4.17 in /usr/local/lib/python3.9/dist-packages (from requests<3.0.0,>=2.25->conan) (2022.9.14)
Requirement already satisfied: idna<4,>=2.5 in /usr/local/lib/python3.9/dist-packages (from requests<3.0.0,>=2.25->conan) (3.4)
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
CC and CXX: /usr/xcc/armv7-unknown-linux-gnueabi/bin/armv7-unknown-linux-gnueabi-gcc, /usr/xcc/armv7-unknown-linux-gnueabi/bin/armv7-unknown-linux-gnueabi-g++ 
Found gcc 8.5
gcc>=5, using the major as version

************************* WARNING: GCC OLD ABI COMPATIBILITY ***********************
 
Conan detected a GCC version > 5 but has adjusted the 'compiler.libcxx' setting to
'libstdc++' for backwards compatibility.
Your compiler is likely using the new CXX11 ABI by default (libstdc++11).

If you want Conan to use the new ABI for the default profile, run:

    $ conan profile update settings.compiler.libcxx=libstdc++11 default

Or edit '/root/.conan/profiles/default' and set compiler.libcxx=libstdc++11

************************************************************************************



Profile created with detected settings: /root/.conan/profiles/default
[settings]
os=Linux
os_build=Linux
arch=x86_64
arch_build=x86_64
compiler=gcc
compiler.version=8
compiler.libcxx=libstdc++
build_type=Release
[options]
[build_requires]
[env]
WARN: Remotes registry file missing, creating default one in /root/.conan/remotes.json
Configuration:
[settings]
arch=armv7
arch_build=x86_64
build_type=Release
compiler=gcc
compiler.libcxx=libstdc++
compiler.version=8
os=Linux
os_build=Linux
[options]
[build_requires]
[env]
[conf]
tools.system.package_manager:sudo=True
tools.system.package_manager:mode=install

opencv/4.5.5: Not found in local cache, looking in remotes...
opencv/4.5.5: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
opencv/4.5.5: Downloaded recipe revision 0
zlib/1.2.12: Not found in local cache, looking in remotes...
zlib/1.2.12: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
zlib/1.2.12: Downloaded recipe revision 0
libjpeg/9d: Not found in local cache, looking in remotes...
libjpeg/9d: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libjpeg/9d: Downloaded recipe revision 0
jasper/2.0.33: Not found in local cache, looking in remotes...
jasper/2.0.33: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
jasper/2.0.33: Downloaded recipe revision 0
libpng/1.6.37: Not found in local cache, looking in remotes...
libpng/1.6.37: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libpng/1.6.37: Downloaded recipe revision 0
openexr/2.5.7: Not found in local cache, looking in remotes...
openexr/2.5.7: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
openexr/2.5.7: Downloaded recipe revision 0
libtiff/4.3.0: Not found in local cache, looking in remotes...
libtiff/4.3.0: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libtiff/4.3.0: Downloaded recipe revision 0
WARN: libtiff/4.3.0: requirement libwebp/1.2.3 overridden by opencv/4.5.5 to libwebp/1.2.2 
libdeflate/1.12: Not found in local cache, looking in remotes...
libdeflate/1.12: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libdeflate/1.12: Downloaded recipe revision 0
xz_utils/5.2.5: Not found in local cache, looking in remotes...
xz_utils/5.2.5: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
xz_utils/5.2.5: Downloaded recipe revision 0
jbig/20160605: Not found in local cache, looking in remotes...
jbig/20160605: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
jbig/20160605: Downloaded recipe revision 0
zstd/1.5.2: Not found in local cache, looking in remotes...
zstd/1.5.2: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
zstd/1.5.2: Downloaded recipe revision 0
libwebp/1.2.2: Not found in local cache, looking in remotes...
libwebp/1.2.2: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libwebp/1.2.2: Downloaded recipe revision 0
eigen/3.3.9: Not found in local cache, looking in remotes...
eigen/3.3.9: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
eigen/3.3.9: Downloaded recipe revision 0
ffmpeg/4.4: Not found in local cache, looking in remotes...
ffmpeg/4.4: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
ffmpeg/4.4: Downloaded recipe revision 0
WARN: ffmpeg/4.4: requirement libwebp/1.2.3 overridden by opencv/4.5.5 to libwebp/1.2.2 
bzip2/1.0.8: Not found in local cache, looking in remotes...
bzip2/1.0.8: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
bzip2/1.0.8: Downloaded recipe revision 0
libiconv/1.17: Not found in local cache, looking in remotes...
libiconv/1.17: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libiconv/1.17: Downloaded recipe revision 0
freetype/2.12.1: Not found in local cache, looking in remotes...
freetype/2.12.1: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
freetype/2.12.1: Downloaded recipe revision 0
brotli/1.0.9: Not found in local cache, looking in remotes...
brotli/1.0.9: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
brotli/1.0.9: Downloaded recipe revision 0
openjpeg/2.5.0: Not found in local cache, looking in remotes...
openjpeg/2.5.0: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
openjpeg/2.5.0: Downloaded recipe revision 0
openh264/2.1.1: Not found in local cache, looking in remotes...
openh264/2.1.1: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
openh264/2.1.1: Downloaded recipe revision 0
vorbis/1.3.7: Not found in local cache, looking in remotes...
vorbis/1.3.7: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
vorbis/1.3.7: Downloaded recipe revision 0
ogg/1.3.5: Not found in local cache, looking in remotes...
ogg/1.3.5: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
ogg/1.3.5: Downloaded recipe revision 0
opus/1.3.1: Not found in local cache, looking in remotes...
opus/1.3.1: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
opus/1.3.1: Downloaded recipe revision 0
libx264/20191217: Not found in local cache, looking in remotes...
libx264/20191217: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libx264/20191217: Downloaded recipe revision 0
libx265/3.4: Not found in local cache, looking in remotes...
libx265/3.4: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libx265/3.4: Downloaded recipe revision 0
libvpx/1.11.0: Not found in local cache, looking in remotes...
libvpx/1.11.0: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libvpx/1.11.0: Downloaded recipe revision 0
libmp3lame/3.100: Not found in local cache, looking in remotes...
libmp3lame/3.100: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libmp3lame/3.100: Downloaded recipe revision 0
libfdk_aac/2.0.2: Not found in local cache, looking in remotes...
libfdk_aac/2.0.2: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libfdk_aac/2.0.2: Downloaded recipe revision 0
openssl/1.1.1q: Not found in local cache, looking in remotes...
openssl/1.1.1q: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
openssl/1.1.1q: Downloaded recipe revision 0
libalsa/1.2.7.2: Not found in local cache, looking in remotes...
libalsa/1.2.7.2: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libalsa/1.2.7.2: Downloaded recipe revision 0
xorg/system: Not found in local cache, looking in remotes...
xorg/system: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
xorg/system: Downloaded recipe revision 0
pulseaudio/14.2: Not found in local cache, looking in remotes...
pulseaudio/14.2: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
pulseaudio/14.2: Downloaded recipe revision 0
libsndfile/1.0.31: Not found in local cache, looking in remotes...
libsndfile/1.0.31: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libsndfile/1.0.31: Downloaded recipe revision 0
flac/1.3.3: Not found in local cache, looking in remotes...
flac/1.3.3: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
flac/1.3.3: Downloaded recipe revision 0
libcap/2.65: Not found in local cache, looking in remotes...
libcap/2.65: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libcap/2.65: Downloaded recipe revision 0
libtool/2.4.7: Not found in local cache, looking in remotes...
libtool/2.4.7: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libtool/2.4.7: Downloaded recipe revision 0
automake/1.16.5: Not found in local cache, looking in remotes...
automake/1.16.5: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
automake/1.16.5: Downloaded recipe revision 0
autoconf/2.71: Not found in local cache, looking in remotes...
autoconf/2.71: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
autoconf/2.71: Downloaded recipe revision 0
m4/1.4.19: Not found in local cache, looking in remotes...
m4/1.4.19: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
m4/1.4.19: Downloaded recipe revision 0
vaapi/system: Not found in local cache, looking in remotes...
vaapi/system: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
vaapi/system: Downloaded recipe revision 0
vdpau/system: Not found in local cache, looking in remotes...
vdpau/system: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
vdpau/system: Downloaded recipe revision 0
vulkan-loader/1.3.221: Not found in local cache, looking in remotes...
vulkan-loader/1.3.221: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
vulkan-loader/1.3.221: Downloaded recipe revision 0
vulkan-headers/1.3.221: Not found in local cache, looking in remotes...
vulkan-headers/1.3.221: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
vulkan-headers/1.3.221: Downloaded recipe revision 0
wayland/1.20.0: Not found in local cache, looking in remotes...
wayland/1.20.0: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
wayland/1.20.0: Downloaded recipe revision 0
libffi/3.4.2: Not found in local cache, looking in remotes...
libffi/3.4.2: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libffi/3.4.2: Downloaded recipe revision 0
libxml2/2.9.14: Not found in local cache, looking in remotes...
libxml2/2.9.14: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
libxml2/2.9.14: Downloaded recipe revision 0
expat/2.4.8: Not found in local cache, looking in remotes...
expat/2.4.8: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
expat/2.4.8: Downloaded recipe revision 0
quirc/1.1: Not found in local cache, looking in remotes...
quirc/1.1: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
quirc/1.1: Downloaded recipe revision 0
gtk/system: Not found in local cache, looking in remotes...
gtk/system: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
gtk/system: Downloaded recipe revision 0
protobuf/3.17.1: Not found in local cache, looking in remotes...
protobuf/3.17.1: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
protobuf/3.17.1: Downloaded recipe revision 0
ade/0.1.1f: Not found in local cache, looking in remotes...
ade/0.1.1f: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
ade/0.1.1f: Downloaded recipe revision 0
gnu-config/cci.20210814: Not found in local cache, looking in remotes...
gnu-config/cci.20210814: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
gnu-config/cci.20210814: Downloaded recipe revision 0
gnu-config/cci.20201022: Not found in local cache, looking in remotes...
gnu-config/cci.20201022: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
gnu-config/cci.20201022: Downloaded recipe revision 0
yasm/1.3.0: Not found in local cache, looking in remotes...
yasm/1.3.0: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
yasm/1.3.0: Downloaded recipe revision 0
pkgconf/1.7.4: Not found in local cache, looking in remotes...
pkgconf/1.7.4: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
pkgconf/1.7.4: Downloaded recipe revision 0
meson/0.62.1: Not found in local cache, looking in remotes...
meson/0.62.1: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
meson/0.62.1: Downloaded recipe revision 0
ninja/1.11.0: Not found in local cache, looking in remotes...
ninja/1.11.0: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
ninja/1.11.0: Downloaded recipe revision 0
meson/0.63.2: Not found in local cache, looking in remotes...
meson/0.63.2: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
meson/0.63.2: Downloaded recipe revision 0
gettext/0.21: Not found in local cache, looking in remotes...
gettext/0.21: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
gettext/0.21: Downloaded recipe revision 0
conanfile.txt: Installing package
Requirements
    ade/0.1.1f from 'conancenter' - Downloaded
    autoconf/2.71 from 'conancenter' - Downloaded
    automake/1.16.5 from 'conancenter' - Downloaded
    brotli/1.0.9 from 'conancenter' - Downloaded
    bzip2/1.0.8 from 'conancenter' - Downloaded
    eigen/3.3.9 from 'conancenter' - Downloaded
    expat/2.4.8 from 'conancenter' - Downloaded
    ffmpeg/4.4 from 'conancenter' - Downloaded
    flac/1.3.3 from 'conancenter' - Downloaded
    freetype/2.12.1 from 'conancenter' - Downloaded
    gtk/system from 'conancenter' - Downloaded
    jasper/2.0.33 from 'conancenter' - Downloaded
    jbig/20160605 from 'conancenter' - Downloaded
    libalsa/1.2.7.2 from 'conancenter' - Downloaded
    libcap/2.65 from 'conancenter' - Downloaded
    libdeflate/1.12 from 'conancenter' - Downloaded
    libfdk_aac/2.0.2 from 'conancenter' - Downloaded
    libffi/3.4.2 from 'conancenter' - Downloaded
    libiconv/1.17 from 'conancenter' - Downloaded
    libjpeg/9d from 'conancenter' - Downloaded
    libmp3lame/3.100 from 'conancenter' - Downloaded
    libpng/1.6.37 from 'conancenter' - Downloaded
    libsndfile/1.0.31 from 'conancenter' - Downloaded
    libtiff/4.3.0 from 'conancenter' - Downloaded
    libtool/2.4.7 from 'conancenter' - Downloaded
    libvpx/1.11.0 from 'conancenter' - Downloaded
    libwebp/1.2.2 from 'conancenter' - Downloaded
    libx264/20191217 from 'conancenter' - Downloaded
    libx265/3.4 from 'conancenter' - Downloaded
    libxml2/2.9.14 from 'conancenter' - Downloaded
    m4/1.4.19 from 'conancenter' - Downloaded
    ogg/1.3.5 from 'conancenter' - Downloaded
    opencv/4.5.5 from 'conancenter' - Downloaded
    openexr/2.5.7 from 'conancenter' - Downloaded
    openh264/2.1.1 from 'conancenter' - Downloaded
    openjpeg/2.5.0 from 'conancenter' - Downloaded
    openssl/1.1.1q from 'conancenter' - Downloaded
    opus/1.3.1 from 'conancenter' - Downloaded
    protobuf/3.17.1 from 'conancenter' - Downloaded
    pulseaudio/14.2 from 'conancenter' - Downloaded
    quirc/1.1 from 'conancenter' - Downloaded
    vaapi/system from 'conancenter' - Downloaded
    vdpau/system from 'conancenter' - Downloaded
    vorbis/1.3.7 from 'conancenter' - Downloaded
    vulkan-headers/1.3.221 from 'conancenter' - Downloaded
    vulkan-loader/1.3.221 from 'conancenter' - Downloaded
    wayland/1.20.0 from 'conancenter' - Downloaded
    xorg/system from 'conancenter' - Downloaded
    xz_utils/5.2.5 from 'conancenter' - Downloaded
    zlib/1.2.12 from 'conancenter' - Downloaded
    zstd/1.5.2 from 'conancenter' - Downloaded
Packages
    ade/0.1.1f:80853771cbd70078c00b0565eb87ca70bd209819 - Build
    autoconf/2.71:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    automake/1.16.5:258f6f05ca54813b3d7180161753df7f9ccf7e1d - Download
    brotli/1.0.9:9302099770d51de61a6d205d01df264f64273127 - Build
    bzip2/1.0.8:9389a4c2c70b5b37c341b3cae252e60bdd643714 - Build
    eigen/3.3.9:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    expat/2.4.8:c16fb3f117604b73aff908091046466b79625454 - Build
    ffmpeg/4.4:03dd33d0b3e346272ca8ca4faab79cc3025df374 - Build
    flac/1.3.3:bf6d88572cd41b57c635a46031d739f8b33cb242 - Build
    freetype/2.12.1:e82b8547b9ff4addec8332bb75a7ccb6630d94f8 - Build
    gtk/system:cc5e5ca8b619d2dffaaeae1e4924ae3ce085a8f1 - Download
    jasper/2.0.33:dae9cafa0f46f611458a2aa6219efcdb7bb3a292 - Build
    jbig/20160605:a1ae33866acf0a0c69048b397cd79358b1eae7a9 - Build
    libalsa/1.2.7.2:72e5bb76647ad766395c534018248eaf92982941 - Build
    libcap/2.65:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    libdeflate/1.12:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    libfdk_aac/2.0.2:80853771cbd70078c00b0565eb87ca70bd209819 - Build
    libffi/3.4.2:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    libiconv/1.17:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    libjpeg/9d:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    libmp3lame/3.100:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    libpng/1.6.37:5c5d6852650564c3cfcfe18ac100c9512beb186f - Build
    libsndfile/1.0.31:20258edd06a6944d4a1509b2baf58d7639555c3f - Build
    libtiff/4.3.0:37f137255c6731d9cc8fe7bca6e3c4c702771f57 - Build
    libtool/2.4.7:401539cdacc057ba19f9b23ff2b9248ad753eea8 - Build
    libvpx/1.11.0:80853771cbd70078c00b0565eb87ca70bd209819 - Build
    libwebp/1.2.2:80969d4ee97223e83334123a5be8eaa2f269ba6b - Build
    libx264/20191217:b1d3baeb65f17c921d0553077fe2d29bc84b4052 - Build
    libx265/3.4:bbcca98f652410248cd8108169aa77ca16559c28 - Build
    libxml2/2.9.14:0da3e8420b5f6a4bb43b965855158b2b617b4e6f - Build
    m4/1.4.19:ef8d7bb63b73bcc98204f8763adba33115db9de2 - Build
    ogg/1.3.5:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    opencv/4.5.5:191ef37bfb22e599ef2caaa1acc49e9af713dfdf - Build
    openexr/2.5.7:b39f27629f7d261962470aaf97a609fe52ba32f9 - Build
    openh264/2.1.1:80853771cbd70078c00b0565eb87ca70bd209819 - Build
    openjpeg/2.5.0:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    openssl/1.1.1q:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    opus/1.3.1:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    protobuf/3.17.1:c878c2ce7cefe4df973abe5e555d74eb9aa298bb - Build
    pulseaudio/14.2:ea0595e15ef49d8d88d7e7cd8db4a1b789cb1239 - Build
    quirc/1.1:b0467552525336c7f0f8d1313b1448c7b6c461f1 - Build
    vaapi/system:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    vdpau/system:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    vorbis/1.3.7:9aae92fd70d6a2b0e3c21794b82bb894d5eb6621 - Build
    vulkan-headers/1.3.221:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    vulkan-loader/1.3.221:869ac164fb0ff66fe2375249d2b4ac37151eef56 - Build
    wayland/1.20.0:8ac2a86a0dcb937bdff0e327d21570939f13e327 - Build
    xorg/system:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    xz_utils/5.2.5:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    zlib/1.2.12:d458f0ad17daab8c37a59b910c7b82677fd9d3c0 - Build
    zstd/1.5.2:46574eda610307ec2289e9f6de8ca5204b6665e0 - Build
Build requirements
    autoconf/2.71 from 'conancenter' - Cache
    automake/1.16.5 from 'conancenter' - Cache
    gettext/0.21 from 'conancenter' - Downloaded
    gnu-config/cci.20201022 from 'conancenter' - Cache
    gnu-config/cci.20210814 from 'conancenter' - Downloaded
    libtool/2.4.7 from 'conancenter' - Cache
    m4/1.4.19 from 'conancenter' - Cache
    meson/0.62.1 from 'conancenter' - Cache
    meson/0.63.2 from 'conancenter' - Downloaded
    ninja/1.11.0 from 'conancenter' - Cache
    pkgconf/1.7.4 from 'conancenter' - Cache
    yasm/1.3.0 from 'conancenter' - Downloaded
Build requirements packages
    autoconf/2.71:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    automake/1.16.5:258f6f05ca54813b3d7180161753df7f9ccf7e1d - Download
    gettext/0.21:9e218ebddc8d83198fb500a52db606b1af9b7afd - Build
    gnu-config/cci.20201022:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    gnu-config/cci.20210814:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    libtool/2.4.7:401539cdacc057ba19f9b23ff2b9248ad753eea8 - Build
    m4/1.4.19:ef8d7bb63b73bcc98204f8763adba33115db9de2 - Build
    meson/0.62.1:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    meson/0.63.2:5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 - Download
    ninja/1.11.0:ef8d7bb63b73bcc98204f8763adba33115db9de2 - Build
    pkgconf/1.7.4:ef8d7bb63b73bcc98204f8763adba33115db9de2 - Build
    yasm/1.3.0:ef8d7bb63b73bcc98204f8763adba33115db9de2 - Build

Cross-build from 'Linux:x86_64' to 'Linux:armv7'
Installing (downloading, building) binaries...
eigen/3.3.9: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
eigen/3.3.9: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
eigen/3.3.9: Downloaded package revision 0
gnu-config/cci.20201022: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
gnu-config/cci.20201022: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
gnu-config/cci.20201022: Downloaded package revision 0
gnu-config/cci.20210814: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
gnu-config/cci.20210814: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
gnu-config/cci.20210814: Downloaded package revision 0
gtk/system: Retrieving package cc5e5ca8b619d2dffaaeae1e4924ae3ce085a8f1 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
gtk/system: Package installed cc5e5ca8b619d2dffaaeae1e4924ae3ce085a8f1
gtk/system: Downloaded package revision 0
vaapi/system: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
vaapi/system: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
vaapi/system: Downloaded package revision 0
vdpau/system: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
vdpau/system: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
vdpau/system: Downloaded package revision 0
vulkan-headers/1.3.221: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
vulkan-headers/1.3.221: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
vulkan-headers/1.3.221: Downloaded package revision 0
xorg/system: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
xorg/system: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
xorg/system: Downloaded package revision 0
autoconf/2.71: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
autoconf/2.71: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
autoconf/2.71: Downloaded package revision 0
meson/0.62.1: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
meson/0.62.1: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
meson/0.62.1: Downloaded package revision 0
meson/0.63.2: Retrieving package 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9 from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
meson/0.63.2: Package installed 5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9
meson/0.63.2: Downloaded package revision 0
automake/1.16.5: Retrieving package 258f6f05ca54813b3d7180161753df7f9ccf7e1d from remote 'conancenter' 
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
automake/1.16.5: Package installed 258f6f05ca54813b3d7180161753df7f9ccf7e1d
automake/1.16.5: Downloaded package revision 0
ade/0.1.1f: Configuring sources in /root/.conan/data/ade/0.1.1f/_/_/source/src
ade/0.1.1f: 
ade/0.1.1f: Copying sources to build folder
ade/0.1.1f: Building your package in /root/.conan/data/ade/0.1.1f/_/_/build/80853771cbd70078c00b0565eb87ca70bd209819
ade/0.1.1f: Generator txt created conanbuildinfo.txt
ade/0.1.1f: Calling generate()
ade/0.1.1f: WARN: Using the new toolchains and generators without specifying a build profile (e.g: -pr:b=default) is discouraged and might cause failures and unexpected behavior
ade/0.1.1f: Aggregating env generators
ade/0.1.1f: Calling build()
ade/0.1.1f: CMake command: cmake -G "Unix Makefiles" -DCMAKE_TOOLCHAIN_FILE="/root/.conan/data/ade/0.1.1f/_/_/build/80853771cbd70078c00b0565eb87ca70bd209819/build/generators/conan_toolchain.cmake" -DCMAKE_INSTALL_PREFIX="/root/.conan/data/ade/0.1.1f/_/_/package/80853771cbd70078c00b0565eb87ca70bd209819" -DCMAKE_POLICY_DEFAULT_CMP0091="NEW" -DCMAKE_BUILD_TYPE="Release" "/root/.conan/data/ade/0.1.1f/_/_/build/80853771cbd70078c00b0565eb87ca70bd209819/src"
-- Using Conan toolchain: /root/.conan/data/ade/0.1.1f/_/_/build/80853771cbd70078c00b0565eb87ca70bd209819/build/generators/conan_toolchain.cmake
-- Conan toolchain: Setting CMAKE_POSITION_INDEPENDENT_CODE=ON (options.fPIC)
-- The C compiler identification is GNU 8.5.0
-- The CXX compiler identification is GNU 8.5.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/xcc/armv7-unknown-linux-gnueabi/bin/armv7-unknown-linux-gnueabi-gcc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/xcc/armv7-unknown-linux-gnueabi/bin/armv7-unknown-linux-gnueabi-g++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /root/.conan/data/ade/0.1.1f/_/_/build/80853771cbd70078c00b0565eb87ca70bd209819/build/Release
ade/0.1.1f: CMake command: cmake --build "/root/.conan/data/ade/0.1.1f/_/_/build/80853771cbd70078c00b0565eb87ca70bd209819/build/Release" '--' '-j8'
[  5%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/alloc.cpp.o
[ 11%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/assert.cpp.o
[ 16%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/check_cycles.cpp.o
[ 27%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/edge.cpp.o
[ 27%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/graph.cpp.o
[ 33%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/execution_engine.cpp.o
[ 38%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/memory_descriptor.cpp.o
[ 44%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/memory_accessor.cpp.o
[ 50%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/memory_descriptor_ref.cpp.o
[ 55%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/memory_descriptor_view.cpp.o
[ 61%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/metadata.cpp.o
[ 66%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/metatypes.cpp.o
[ 72%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/node.cpp.o
[ 77%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/passes/communications.cpp.o
[ 83%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/search.cpp.o
[ 88%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/subgraphs.cpp.o
[ 94%] Building CXX object sources/ade/CMakeFiles/ade.dir/source/topological_sort.cpp.o
[100%] Linking CXX static library ../../lib/libade.a
[100%] Built target ade
ade/0.1.1f: Package '80853771cbd70078c00b0565eb87ca70bd209819' built
ade/0.1.1f: Build folder /root/.conan/data/ade/0.1.1f/_/_/build/80853771cbd70078c00b0565eb87ca70bd209819/build/Release
ade/0.1.1f: Generated conaninfo.txt
ade/0.1.1f: Generated conanbuildinfo.txt
ade/0.1.1f: Generating the package
ade/0.1.1f: Package folder /root/.conan/data/ade/0.1.1f/_/_/package/80853771cbd70078c00b0565eb87ca70bd209819
ade/0.1.1f: Calling package()
ade/0.1.1f: Copied 1 file: LICENSE
ade/0.1.1f: CMake command: cmake --install "/root/.conan/data/ade/0.1.1f/_/_/build/80853771cbd70078c00b0565eb87ca70bd209819/build/Release" --prefix "/root/.conan/data/ade/0.1.1f/_/_/package/80853771cbd70078c00b0565eb87ca70bd209819"
CMake Warning:
  Ignoring extra path from command line:

   "/root/.conan/data/ade/0.1.1f/_/_/package/80853771cbd70078c00b0565eb87ca70bd209819"


CMake Error: Unknown argument --prefix
CMake Error: Run 'cmake --help' for all supported options.
ERROR: ade/0.1.1f: Error in package() method, line 55
        cmake.install()
        ConanException: Error 1 while executing cmake --install "/root/.conan/data/ade/0.1.1f/_/_/build/80853771cbd70078c00b0565eb87ca70bd209819/build/Release" --prefix "/root/.conan/data/ade/0.1.1f/_/_/package/80853771cbd70078c00b0565eb87ca70bd209819"
Error response from daemon: The command '/bin/sh -c /bin/bash -c "source ./arm7/build-image.sh"' returned a non-zero code: 1
Failed to deploy '<unknown> Dockerfile: arm7/Dockerfile': Can't retrieve image ID from build stream

````