close();
clear;
clc;
//resistance 'R', inductance 'L', angular frequency 'w', phase difference 'theta'
R = 20; //ohm
L = 15*10^(-3); //mH
w = 1000; //rad/s
theta = 45; //degree
//net reactance of parallel LC combination = 20 ohm or -20 ohm
C1 = poly(0,'C1');
pc1 = 1/(%i*w*L) - 1/(R*%i) + %i*w*C1;
C1 = roots(pc1);
C2 = poly(0,'C2');
pc2 = 1/(%i*w*L) + 1/(R*%i) + %i*w*C2;
C2 = roots(pc2);
mprintf("C1 = %0.2f uF\nC2 = %0.1f uF\n\n",C1*10^6, C2*10^6);
mprintf("For smaller (larger) capacitance, I lags (leads) V by 45 degree"); 