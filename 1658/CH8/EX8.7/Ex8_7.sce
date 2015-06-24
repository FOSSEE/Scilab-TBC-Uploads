clc;
//e.g 8.7
beta=150;
Ie=10*10**-3;
alpha=beta/(1+beta)
Ic=alpha*Ie;//as alpha=(Ic/Ie)
disp('mA',Ic*10**3,"Ic=");
Ib=Ie-Ic;//as  Ie=Ib+Ic
disp('mA',Ib*10**3,"Ib=");
