// Example 3.1.a:fracture stress
clc;
clear;
close;
la=0.16;//bond length in nm
st=2.6*10^6;//psi
psi=6894.76;//Nm^-2
e=9*10^10;//NM^-2
yp=((4*la*10^-9*(st*psi)^2)/(e));//in joules
c=10^-8;//
sf=sqrt((2*e*yp)/(%pi*c));//N/m^2
sf1=sf/(psi);//psi
disp(sf1,"fracture stress in psi is")
