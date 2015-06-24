
clc;
//e.g 18.5
Rb=400*10**3;
Vcc=20;
Rc=2*10**3;
Re=1*10**3;
beta=100;
Ib=Vcc/(Rb+(beta*Re));//saturation current
disp('mA',Ib*10**3,"Ib=");
Ic=beta*Ib;
disp('mA',Ic*10**3,"Ic=");
Vce=Vcc-(Ic*(Rc+Re));//cut-off voltage
disp('V',Vce*1,"Vce=");
