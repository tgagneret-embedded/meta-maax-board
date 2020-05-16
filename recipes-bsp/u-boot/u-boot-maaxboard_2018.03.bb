require u-boot-maaxboard.inc
require recipes-bsp/u-boot/u-boot.inc

PROVIDES += "u-boot"

do_configure() {
    oe_runmake em_sbc_imx8m_defconfig
}

do_compile() {
    oe_runmake
}

do_deploy() {
    install -d ${DEPLOYDIR}
    install -m 644 ${B}/spl/u-boot-spl.bin ${DEPLOYDIR}/u-boot-spl.bin
    install -m 644 ${B}/arch/arm/dts/em-sbc-imx8m.dtb ${DEPLOYDIR}/u-boot-em-sbc-imx8m.dtb
    install -m 644 ${B}/u-boot-nodtb.bin ${DEPLOYDIR}/u-boot-nodtb.bin
}

do_install() {
    :
}

B = "${WORKDIR}/git"
S = "${WORKDIR}/git"

