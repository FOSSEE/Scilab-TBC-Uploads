

clc;
//e.g 18.9
Rb=180*10**3;
Vcc=25;
Rc=820;
Re=200;
beta=80;
Vbe=0.7;
Ic=(Vcc-Vbe)/(Re+(Rb/beta));//collector current
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc-(Ic*Rc);//collector to emitter voltage
disp('V',Vce*1,"Vce=");
S=(1+beta)/(1+beta*(Re/(Re+Rb)));
disp(S,"S=");//stability factor
