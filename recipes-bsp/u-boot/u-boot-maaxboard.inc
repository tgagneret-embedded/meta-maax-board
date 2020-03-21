DEPENDS_append = " bc-native dtc-native bison-native"

# FIXME: Allow linking of 'tools' binaries with native libraries
#        used for generating the boot logo and other tools used
#        during the build process.

PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "(mx8)"

#inherit fsl-u-boot-localversion

LICENSE = "GPLv2+"
LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"

#EXTRA_OEMAKE += 'HOSTCC="gcc"'

DEPENDS += "zlib"

#SRCREV = "ca0ab152714540f93bab9347ad5b706a0a54f037"
SRCBRANCH = "u-boot_2018.03._develop_50b1e8d144"
SRCREV = "eb3e374e980193ae4140e9a8b5b48bb2aa6cf84e"
#SRCBRANCH = "master"

#PV = "v2019.07+git${SRCPV}"

SRC_URI = "git://github.com/tgagneret-embedded/maax-board-u-boot;branch=${SRCBRANCH};protocol=https"

#What is that ?
SRC_URI[sha256sum] = "3a4e7c63b41006915471233c9f51b0b0dd0eee10b63b83989a54d7c009b8916c"


