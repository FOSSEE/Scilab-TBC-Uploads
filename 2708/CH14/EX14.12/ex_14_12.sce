//Example 14.12 // fraction of vacancy sites 
clc;
clear;
//given data :
f=1D-10;// fraction of vacancy sites
T1=500;// temperature in degree
T2=2*T1;// condition given
T1=T1+273;// to convert in kelvin
T2=T2+273;// to convert in kelvin
f1=exp(T1*log(f)/T2);//new fraction
disp(f1,"new fraction at new temperature")
