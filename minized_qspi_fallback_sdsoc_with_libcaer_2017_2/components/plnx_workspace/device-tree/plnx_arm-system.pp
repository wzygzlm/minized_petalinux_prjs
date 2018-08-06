# 1 "/apps_home/home/sroussea/minized_qspi/build/../components/plnx_workspace/device-tree-generation/system-top.dts"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/apps_home/home/sroussea/minized_qspi/build/../components/plnx_workspace/device-tree-generation/system-top.dts"







/dts-v1/;
/include/ "zynq-7000.dtsi"
/include/ "pl.dtsi"
/include/ "pcw.dtsi"
/ {
 chosen {
  bootargs = "earlycon";
  stdout-path = "serial0:115200n8";
 };
 aliases {
  serial0 = &uart1;
  serial1 = &uart0;
  serial2 = &bluetooth_uart;
  spi0 = &qspi;
 };
 memory {
  device_type = "memory";
  reg = <0x0 0x20000000>;
 };
 cpus {
  /delete-node/ cpu@1 ;
 };
};
# 1 "/apps_home/home/sroussea/minized_qspi/build/tmp/work/plnx_arm-xilinx-linux-gnueabi/device-tree-generation/xilinx+gitAUTOINC+43551819a1-r0/system-user.dtsi" 1
/include/ "system-conf.dtsi"
/ {

 aliases {
  serial0 = &uart1;
  serial1 = &uart0;
 };


 wlreg_on: wlreg-on {
  compatible = "regulator-fixed";
  regulator-name = "wlreg_on";
  enable-active-high;
  gpio = <&gpio0 56 0>;
  regulator-min-microvolt = <3300000>;
  regulator-max-microvolt = <3300000>;
  startup-delay-us = <100>;
 };







};

&flash0 {
 compatible = "micron,n25q128", "jedec,spi-nor";
};

/{
 usb_phy0: usb_phy@0 {
  compatible = "ulpi-phy";
  #phy-cells = <0>;
  reg = <0xe0002000 0x1000>;
  view-port = <0x0170>;
  drv-vbus;
 };
};

&usb0 {
 dr_mode = "otg";
 usb-phy = <&usb_phy0>;
} ;


&qspi {
 #address-cells = <1>;
 #size-cells = <0>;
 flash0: flash@0 {
  compatible = "micron,m25p80";
  reg = <0x0>;
  #address-cells = <1>;
  #size-cells = <1>;
  spi-max-frequency = <50000000>;
  partition@0x00000000 {
   label = "boot";
   reg = <0x00000000 0x00ff0000>;
  };
 };
};


&sdhci0 {
 status = "okay";
 bus-width= <4>;
 xlnx,has-cd = <0x0>;
 xlnx,has-power = <0x0>;
 xlnx,has-wp = <0x0>;
 non-removeable;
 broken-cd;
 vmmc-supply = <&wlreg_on>;



        brcmf: brcmf@1 {
  status = "okay";
                reg = <1>;
                compatible = "brcm,bcm43430-fmac";




 };
};


&sdhci1 {
 status = "okay";
 non-removeable;
 bus-width= <4>;
 xlnx,has-cd = <0x0>;
 xlnx,has-power = <0x0>;
 xlnx,has-wp = <0x0>;

 mmccard: mmccard@0 {
  reg = <0>;
  compatible = "mmc-card";
  broken-hpi;
 };
};


&uart1 {
    status = "okay";
 current-speed = <115200>;
 port-number = <0>;
};


&bluetooth_uart {
    status = "okay";
 current-speed = <115200>;
 port-number = <2>;
};


&axi_iic_0 {
 status = "okay";


     accel0: lis2ds12@1d {
         compatible = "st,lis2ds12";
         reg = <0x1d>;
     };

};

/ {

};
# 31 "/apps_home/home/sroussea/minized_qspi/build/../components/plnx_workspace/device-tree-generation/system-top.dts" 2
