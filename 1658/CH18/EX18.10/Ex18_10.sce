
clc;
//e.g 18.10
Vbe=0.7;
Rb=100*10**3;
Vcc=10;
Rc=10*10**3;
beta=100;
Ic=(Vcc-Vbe)/(Rc+(Rb/beta));//collector current
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc-(Ic*Rc);//collector to emitter voltage
disp('V',Vce*1,"Vce=");
Ic=Vcc/Rc;
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc;
disp('V',Vce*1,"Vce=");
