clc;
//e.g 8.8
beta=170;
Ic=80*10**-3;
Ib=Ic/beta;//beta=(Ic/Ib)
disp('mA',Ib*10**3,"Ib=");
Ie=Ic+Ib;
disp('mA',Ie*10**3,"Ie=");
