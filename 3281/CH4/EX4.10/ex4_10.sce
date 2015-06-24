//Page Number: 199
//Example 4.10
clc;
//Given
a=3;//cm
a1=a/100;//m
d=10;//cm
d1=d/100;//m
df=2.5D+6;
er=2.25;
p11=1.841;
c=3D+8; //m/s

//Resonant frequency
fr=(c/2)*(sqrt((p11/a1)^2+(%pi/d1)^2));//hz
disp('Ghz',fr/10^9,'Resonant frequency:');

//Q without dielectric
q0=fr/df;
disp(q0,'Q wirhout dielectric constant:');

// Q with dielectric
fr1=fr/sqrt(er);
qd=1D+3;
q=(q0*qd)/(q0+qd);
disp(q,'Q with dielectric constant:');
