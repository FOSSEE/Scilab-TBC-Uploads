
clc;
//e.g 18.16
Vbe=0.7;
Vcc=10;
Rc=1*10**3;
beta=100;
R1=10*10**3;
R2=5*10**3;
Re=500;
Vb=Vcc*(R2/(R1+R2));
disp('V',Vb*1,"Vb=");
Ve=Vb-Vbe;
disp('V',Ve*1,"Ve=");
Ie=Ve/Re;
disp('mA',Ie*10**3,"Ie=");
Ic=Ie;
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc-(Rc+Re);
disp('V',Ve*1,"Ve=");
