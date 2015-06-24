
clc;
//e.g 18.3
Rb=180*10**3;
Vcc=25;
Rc=820;
beta=80;
Ib=Vcc/Rb;//saturation current
disp('mA',Ib*10**3,"Ib=");
Ic=beta*Ib;
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc-(Ic*Rc);//cut-off voltage
disp('V',Vce*1,"Vce=");
