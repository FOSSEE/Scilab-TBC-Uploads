//Chapter 13
//page no 583
//given
clc;
clear all;
Er=4.7;
b=10;                //in mils
w=4;                //in mils
t=0.5;                //in mils
Z=60/sqrt(Er)*log(4*b/0.67/%pi/(0.8*w+t));
printf("\n Z = %0.2f ohm\n",Z);
tpd=1.017*sqrt(Er);
printf("\n tpd = %0.1f ns/ft\n",tpd);
Tpd=tpd*1000/12;           //converted into ps/in
printf("\n Also,tpd = %0.0f ps/in\n",Tpd);//answer is slightly different due to rounding off 
