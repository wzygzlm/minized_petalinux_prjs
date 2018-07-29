SRC_URI_append = " file://platform-top.h"
#SRC_URI_append = " file://0001-zynq-mmc-Removed-HS200-support.patch"
SRC_URI_append = " file://0001-zynq-qspi-initialize-is_dual-flag.patch"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"


SRC_URI += "file://user_2017-08-14-12-31-00.cfg"

