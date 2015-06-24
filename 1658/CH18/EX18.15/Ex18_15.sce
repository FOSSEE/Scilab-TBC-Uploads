
clc;
//e.g 18.15
Rb=33*10**3;
Vcc=3;
Rc=1.8*10**3;
beta=90;
Vbe=0.7;
Ib=(Vcc-Vbe)/(Rb+(Rc*beta));//collector current
disp('mA',Ib*10**3,"Ib=");
Ic=beta*Ib;
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc-(Ic*Rc);//collector to emitter voltage
disp('V',Vce*1,"Vce=");
S=(1+beta)/(1+beta*(Rc/(Rc+Rb)))//stability factor
