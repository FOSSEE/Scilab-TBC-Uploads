//Exa 6.2
clc;
clear;
close;
//given data
VGS1=0;//in Volt
VGS2=0;//in Volt
VGS3=-0.2;//in Volt
VDS1=7;//in Volt
VDS2=15;//in Volt
VDS3=15;//in Volt
ID1=10;//in mA
ID2=10.25;//in mA
ID3=9.65;//in mA
delVDS=VDS2-VDS1;//in Volts
delID=ID2-ID1;//in mA
rd=delVDS/delID;//in Kohm
disp(rd,"AC drain resistance in Kohm : ");
delVGS=VGS3-VGS2;//in Volts
delID=ID3-ID2;//in mA
gm=delID*10^-3/delVGS;//in mhos
disp(gm,"Transconductance in mhos : ");
mu=rd*10^3*gm;//unitless
disp(mu,"Amplification factor : ");
