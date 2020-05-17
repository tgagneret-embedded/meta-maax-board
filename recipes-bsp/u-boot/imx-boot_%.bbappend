require u-boot-maaxboard.inc

do_compile() {
    cp -f ${DEPLOY_DIR_IMAGE}/u-boot-spl.bin ${B}/tools/imx-boot/iMX8M/u-boot-spl.bin
    cp -f ${DEPLOY_DIR_IMAGE}/u-boot-em-sbc-imx8m.dtb ${B}/tools/imx-boot/iMX8M/em-sbc-imx8m.dtb
    cp -f ${DEPLOY_DIR_IMAGE}/u-boot-nodtb.bin ${B}/tools/imx-boot/iMX8M/u-boot-nodtb.bin

    cd tools/imx-boot/
    oe_runmake clean
    oe_runmake SOC=iMX8M flash_ddr4_em
    cd ../../
    cp -f ./tools/imx-boot/iMX8M/flash.bin  u-boot.imx
}

do_deploy() {
    install -d ${DEPLOYDIR}
    install -m 644 ${B}/u-boot.imx ${DEPLOYDIR}/u-boot.imx
#TODO symlink
    install -m 644 ${B}/u-boot.imx ${DEPLOYDIR}/imx-boot
}

do_install() {
    :
}

B = "${WORKDIR}/git"
S = "${WORKDIR}/git"

BBCLASSEXTEND = "native"
