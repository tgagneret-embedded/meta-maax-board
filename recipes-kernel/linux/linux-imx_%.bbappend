LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

inherit kernel fsl-kernel-localversion

# Put a local version until we have a true SRCREV to point to
LOCALVERSION = ""
SCMVERSION = "y"
SRCBRANCH = "4.14.78_develop_16c7d5eeed2d"
SRCREV = "f99deb52a221cc85955ad1c84faa46bc0320f816"

KERNEL_DEVICETREE = "freescale/em-sbc-imx8m.dtb"

SRC_URI = "git://github.com/tgagneret-embedded/maax-board-linux;protocol=https;branch=${SRCBRANCH}"

S = "${WORKDIR}/git"

COMPATIBLE_MACHINE = "(mx8)"

# We need to pass it as param since kernel might support more then one
# machine, with different entry points
KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"


SRC_URI[sha256sum] = "ef27e600557f1be6bf74347aba0b9611c0c7f09dcc0a413cb54cf20a93f9d41e"


do_configure() {
    make em-sbc-imx8m_defconfig
}
