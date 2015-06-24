clc;
//e.g 8.4
Ie=10*10**-3;
alpha=0.987;
Ic=Ie*alpha;//alpha=Ic/Ie
disp('mA',Ic*10**3,"Ic=");
Ib=Ie-Ic;
disp('mA',Ib*10**3,"Ib=");
