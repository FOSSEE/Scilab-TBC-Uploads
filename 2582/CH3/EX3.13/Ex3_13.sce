//Ex 3.13
clc;clear;close;
format('v',6);
fH=100;//Hz
fL=1*1000;//Hz
disp("This filter is a combination of -:");
disp("High pass filter having fH=100 Hz");
disp("Low pass filter having fL=1 kHz");
disp("And a summing amplifier");
//High pass filter
disp("Design values for high pass section :");
C=0.05;//micro F(have to choose C, 0.01<C<1)
R=1/(2*%pi*fL*C*10^-6)/1000;//kohm
Ap=2;//assumed
//Rf=Ri;//for gain=2
Rf=10;//kohm(assumed)
Ri=10;//kohm(assumed)
disp(C,"Capacitance(micro F)");
disp(R,"Resistance R(kohm)");
disp("Value of Resistance Rf & Ri can be choosen as 10 kohm for filter design.");
//Low pass filter
disp("Design values for low pass section :");
C=0.1;//micro F(have to choose C, 0.01<C<1)
Rdash=1/(2*%pi*fH*C*10^-6)/1000;//kohm
Ap=2;//assumed
//Rfdash=Ridash;//for gain=2
Rf_dash=10;//kohm(assumed)
Ri_dash=10;//kohm(assumed)
disp(C,"Capacitance(micro F)");
disp(Rdash,"Resistance Rdash(kohm)");
disp("Value of Resistance Rf_dash & Ri_dash can be choosen as 10 kohm for filter design.");
