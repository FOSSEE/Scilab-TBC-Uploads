clc;
//e.g 8.12
alpha=0.98;
Ico=5*10**-6;
Ib=100*10**-6;
Ic=((alpha*Ib)/(1-alpha))+(Ico/(1-alpha));
disp('mA',Ic*10**3,"Ic=");
Ie=Ib+Ic;
disp('mA',Ie*10**3,"Ie=");
