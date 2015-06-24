//chapter 19
//example 19.4
//page 600
clear all;
clc ;
//given
Es=0.5;//supply voltage V
R1=200;//series resistance ohm
VD1=-Es;//when Id=0
//when VD=0
VR1=Es;
ID1=1000*VR1/R1;
VD=[VD1 0];
ID=[0 ID1];
plot(VD,ID,'-.*');
xtitle('dc load line with points (-0.5,0)and (0,2.5)','VD in V','ID in mA')
a=gca();
a.data_bounds=[-1,-0.5;1 3];
//from intersection of load line and illumination characteristics
printf('\nApproximate values:')
printf("\nAt 1500 lm/m^2,Id=-0.2 mA,Vd=-0.45 V");
printf("\nAt 10000 lm/m^2,Id=-1.9 mA,Vd=-0.12 V");
printf("\nAt 20000 lm/m^2,Id=-3.7 mA,Vd=0.22 V");


