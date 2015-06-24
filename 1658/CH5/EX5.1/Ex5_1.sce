clc;
//e.g 5.1
I0=2*10**-7;
Vf=0.1;
I=I0*(exp (40*Vf)-1);
disp('uA',I*10**6,"I=");
