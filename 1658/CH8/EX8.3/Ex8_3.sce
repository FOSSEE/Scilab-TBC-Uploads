clc;
//e.g8.3
a=0.967;
Ie=10*10**-3;
Ic=Ie*a;//a=Ic/Ie
disp('mA',Ic*10**3,"Ic=");
Ib=Ie-Ic;
disp('mA',Ib*10**3,"Ib=");
