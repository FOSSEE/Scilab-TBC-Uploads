clear;
clc;
//Example 10.8
Iref=100;
Io=Iref;
//lambda=y
y=0.01;
gm=0.5*10^+3;
ro=1/(y*Iref);
printf('\noutput resistance=%.2f MOhm\n',ro)
ro2=1;
ro4=1;
Ro=ro4+ro2*(1+gm*ro4);
printf('\noutput resistance of cascode circuit=%.2f MOhm\n',Ro)
