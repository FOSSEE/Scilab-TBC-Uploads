clc;
//e.g 8.9
Ib=125*10**-6;
beta=200;
Ic=beta*Ib;
disp('mA',Ic*10**3,"Ic=");
Ie=Ib+Ic;
disp('mA',Ie*10**3,"Ie=");
