clc;
//e.g 8.10
Ie=12*10**-3;
beta=140;
Ib=Ie/(1+beta);
disp('mA',Ib*10**3,"Ib=");
Ic=Ie-Ib;
disp('mA',Ic*10**3,"Ic=");
