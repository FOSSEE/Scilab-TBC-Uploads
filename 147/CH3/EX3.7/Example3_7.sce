close();
clear;
clc;
//voltage source 'V', frequency of source 'f', resistance 'R', inductance 'L', capacitance 'C'
V = 100;
V_arg = 0;
f = 79.6; //Hz
R = 100; //ohm
L = 1; //H
C = 5*10^(-6); //F

//(a) 
//angular frequency 'w'
w = 2*%pi*f; //rad/s
//inductive reactance 'Xl'
Xl = w*L; //ohm
Xl_arg = %pi/2; //rad
//capacitive reactance 'Xc'
Xc = 1/(w*C);
Xc_arg = -%pi/2; //rad
//impedance 'Z'
Z = sqrt(R^2 + (Xl-Xc)^2);
Z_arg = atan((Xl-Xc)/R); //rad
//input current magnitude 'I' and argument 'I_arg'
I = V/Z;
I_arg = V_arg-Z_arg; //rad
mprintf("input current, I = %0.3f arg(%d degree )\n\n",I,I_arg*180/%pi);

//(b)
//voltage across R 'Vr'
Vr = R*I;
Vr_arg = I_arg;
//volatge across L 'Vl'
Vl = Xl*I;
Vl_arg = Xl_arg+I_arg;
//voltage across C 'Vc' 
Vc = Xc*I;
Vc_arg = Xc_arg+I_arg;
mprintf("Voltage across resistance, Vr = %0.1f arg(%d degree )\n\n",Vr, round(Vr_arg*180/%pi));
mprintf("Voltage across inductor, Vl = %0.1f arg(%d degree )\n\n",Vl, round(Vl_arg*180/%pi));
mprintf("Voltage across capacitor, Vc = %0.1f arg(%d degree )",Vc, round(Vc_arg*180/%pi));