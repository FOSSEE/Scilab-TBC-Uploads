
clc;
//e.g 18.4;
Vcc=12;
Rc=330;
Ib=0.3*10**-3;
beta=100;
//Ib=Vcc/Rb;//saturation current
Rb=Vcc/Ib;
disp('Kohm',Rb*10**-3,"Rb=");
S=1+beta;
disp(S);
Ic=beta*Ib;
disp('10^-3A',Ic*10**3,"Ic=");
Vce=Vcc-(Ic*Rc);//cut-off voltage
disp('V',Vce*1,"Vce=");
