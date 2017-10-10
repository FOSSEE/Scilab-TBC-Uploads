// Determine Current through branch AB of the given network

clc;
clear;

// MESH Equations
// 4*i1-2*i2+0*i3=10
// -2*i1+6*i2-2*i3=0
//0*i1-2*i2+6*i3=0

//Supply Voltage is 10V (Note printing mistake)

R=[4 -2 0;-2 6 -2; 0 -2 6];
V=[10;0;0];

// Loop Currents

I=inv(R)*V;

i1=I(1);
i2=I(2);
i3=I(3);

disp('amperes',abs(i2),'The current through branch AB of the network =')

