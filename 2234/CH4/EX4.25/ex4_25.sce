clc;
eo=8.85*10^-12;  //constant
A=90*10^-4;  //area in m square
d=2.5*10^-3;   //distance in m
V=400;  //in volt
C=(eo*A)/d;  //calculating capacitance
disp(C,"Capacitance in Farad = ");  //displaying result
W=(1/2)*(C*(V^2));  //calculating electrical energy stored
disp(W,"Electrical Energy stored in capacitor in Joule = ");  //displaying result