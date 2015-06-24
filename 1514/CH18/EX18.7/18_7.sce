//chapter 18
//example 18.7
//page 580
clear;
clc ;
//given
VB1B2=15;
Vd=0.7;
eta=0.82;//intrinsic standoff ratio
Ip=2;//maximum current
Vp=Vd+(eta*VB1B2);
REmax=(VB1B2-Vp)/Ip;
printf("\nREmax=%d Mohm",REmax);
VEBsat=2.5;
IV=2;//in mA
REmin=(VB1B2-VEBsat)/IV;
printf("\nREmin=%.2f kohm",REmin);


