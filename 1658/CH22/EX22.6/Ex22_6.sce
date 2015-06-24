clc;
//e.g 22.6
IDSS=10*10**-3;
VDD=20;
IDQ=IDSS/2;
disp('mA',IDQ*10**3,"ID=");
VDSQ=VDD/2;
disp('V',VDSQ*1,"VDS=");
VGS=-2.2;
RD=(VDD-VDSQ)/IDQ;
disp('Kohm',RD*10**-3,"RD=");
RS=-VGS/IDQ;
disp('ohm',RS*1,"RS=");
