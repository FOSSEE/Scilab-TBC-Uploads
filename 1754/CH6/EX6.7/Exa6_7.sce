//Exa 6.7
clc;
clear;
close;
//given data
R1=2.1;//in Mohm
R2=270;//in Kohm
RD=4.7;//in Kohm
RS=1.5;//in Kohm
VDD=20;//in Volt
VP=-4;//in Volt
IDSS=8;//in mA
//step 1 : Find VGS :
VG=R2*10^3*VDD/(R1*10^6+R2*10^3);//in Volt
disp("VS=ID*RS-VGS Volt");
disp("VGS=VG-VS=2.28-1.5*ID")
//step 2 : Find ID :
disp("ID=IDSS*[1-VGS/VP]^2 mA");
disp("ID=8*[1-(2.28-1.5*ID)/4]^2 mA");
disp("2*ID=39.44-18.84*ID+2.25*ID^2");
disp("2.25*ID^2-20.84*ID39.44=0")
disp("ID=6.6mA or 2.65mA");
disp("For ID =6.6mA VDS=-ve");
disp("So discard the value so IDQ = 2.65mA.");
ID=2.65;//in mA
//step 3 : Find VGSQ :
IDQ=ID;//in mA
VGS=2.28;//in Volt
VGSQ=VGS-1.5*IDQ;///in Volt
//step 4 : Find VDSQ :
VDSQ=VDD-IDQ*(RD+RS);//in Volt
//step 5 : Find VD,VS and VDG :
VDS=VDSQ;//in Volt
VG=VGS;//in Volt
VS=ID*RS;//in Volt
VD=VS+VDS'//in Volt
VDG=VD-VG;//in Volt
disp(IDQ,"IDQ in mA : ");
disp(VGSQ,"VGSQ in Volt :");
disp(VD,"VD in Volt :");
disp(VS,"VS in Volt :");
disp(VDS,"VDS in Volt :");
disp(VDG,"VDG in Volt :");
