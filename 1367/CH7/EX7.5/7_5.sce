//Find Stress
//Ex:7.5
clc;
clear;
close;
n=3;
a=300;
v_cr=2.8*10^-8;// in cm/cm/hour creep rate
x=log(v_cr)-n*log(a);
a1=exp(x);
t=365*24;//in hours
e=2*10^6;//kgf/sqcm
ai=750;//in kgf/sqcm
a_tf=sqrt(1/((1/ai^(n-1))+(a1*e*(n-1)*t)));
disp(a_tf,"Stress Remaining (in kgf/sq cm) = ");