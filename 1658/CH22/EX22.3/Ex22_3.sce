clc;
//e.g 22.3
ID=1.5*10**-3;
VDS=10;
IDSS=5*10**-3;
VP=-2;
VDD=20;
//ID=IDSS*(1-(VGS/VP))**2
VGS=VP*(1-(ID/IDSS));
VS=-VGS;
RS=(VS/ID);
disp('ohm',RS*1,"RS=");
RD=((VDD-VDS)/ID)-RS;
disp('Kohm',RD*10**-3,"RD=");
