clear;
//clc();

z1=400;
z2=300;
z3=300;
z2=300;
zd=50;

et=2*(1/z1)/(1/z1  + 1/z2 + 1/z3);
et1=et*(2*zd/(z2 + zd)); 
t=3.1534;
v=250*(exp(-.05*t) - exp(-t));
e=et1*v;
printf("The maximum voltage is:%.2f kV",e);
