//Exa 4.4
clc;
clear;
close;
//given data :
VDS1=5;//in Volt
VDS2=12;//in Volt
VDS3=12;//in Volt
VGS1=0;//in Volt
VGS2=0;//in Volt
VGS3=-0.25;//in Volt
ID1=8;//in mAmpere
ID2=8.2;//in mAmpere
ID3=7.5;//in mAmpere
//AC drain resistance
delVDS=VDS2-VDS1;//in Volt
delID=ID2-ID1;//in mAmpere
rd=delVDS/delID;//in Kohm
disp(rd,"AC Drain resistance in Kohm : ");
//Transconductance
delID=ID3-ID2;//in mAmpere
delVGS=VGS3-VGS2;//in Volt
gm=delID/delVGS;//in mA/V or mS
disp(gm,"Transconductance in mA/V : ");
//Amplification Factor
meu=rd*1000*gm*10^-3;//unitless
disp(meu,"Amplification Factor : ");