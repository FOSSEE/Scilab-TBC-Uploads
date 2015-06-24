//clear//
//Caption:Program to find the input impedance and power delivered to
//the load
//Example11.8
//page363
clc;
close;
ZR1 = 300; //input impedance of first receiver
ZR2 = 300; //input impedance of second receiver
Zo = ZR1; //characteristic impedance = 300 ohm
Zc = -%i*300;//capacitive impedance
L = 80e-02;//length = 80 cm
Lambda = 1; //wavelength = 1m
Vth = 60; // voltage 300 volts
Zth = Zo;
ZL1 = parallel(ZR1,ZR2);
ZL = parallel(ZL1,Zc); //net load impedane
T = reflection_coeff(ZL,ZR2);//reflection coefficient
[R,teta1] = polar(T); //reflection coefficient in polar form
teta1 = real(teta1)*57.3;//teta value in degrees
S = VSWR(R); //voltage standing wave ratio
EL = electrical_length(L,Lambda);
EL = EL/57.3; //electrical length in degrees
Zin = Zo*(ZL*cos(EL)+%i*Zo*sin(EL))/(Zo*cos(EL)+%i*ZL*sin(EL));
disp(Zin,'Input Impedance in ohms Zin =')
Is = Vth/(Zth+Zin);//source current in amps
[Is,teta2] = polar(Is);//source current in polar form
Pin = (1/2)*(Is^2)*real(Zin);
PL = Pin; //for lossless line
disp(Pin,'Power delivered to a loss less line in watss PL =')
//Result
//Input Impedance in ohms Zin =   755.49551 - 138.46477i  
// Power delivered to a loss less line in watss PL =  1.2 
