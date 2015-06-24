

clc;
//e.g 18.11
Rb=100*10**3;
Vcc=10;
Rc=2*10**3;
beta1=50;
Vbe=0.7;
Ib=(Vcc-Vbe)/(Rb+(beta1*Rc));
disp('mA',Ib*10**3,"Ib=");
Ic=beta1*Ib;
disp('mA',Ic*10**3,"Ic=");
Ie=Ic;
disp('mA',Ie*10**3,"Ie=");
