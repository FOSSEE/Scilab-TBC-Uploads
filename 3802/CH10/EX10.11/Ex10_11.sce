//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_11.sce

clc;
clear;


P_in_HP=25;
s=0.04;
p=4;
f=50;
Ns=(120*f)/p;
ns=Ns/60;
nf=(1-s)*ns;
P_in_watt=P_in_HP*735.5;
Tf=P_in_watt/(2*%pi*nf);
sf=s;
sp=2-s;         //At the time of plugging the slip is 200%
a=4;
X2_by_R2=a;
Tp=(sp/sf)*((1+(sf^2*X2_by_R2^2))/(1+(sp^2*X2_by_R2^2)))*Tf;
printf("\n Plugging torque at full load=%2.1f Nm",Tp)
