clc;
D=10; //Bore in cm
L=12.5; //Stroke length in cm
a=9.68; // Area of indicator card in cm^2
l=5.33; // Card length in cm
Ks=21.7; // Indicator spring constant per meter of card length
A=(%pi*(D*10^-2)^2)/4; // Area of pisaton
Pm=(a/l)*10^-2*Ks*10^6; // Mean effective pressure
W=Pm*A*L*10^-2; // Work done by cycle
disp("kJ",W,"Work done by cycle = ");
