//Example_a_4_12 page no:180
clc;
f=10*10^3;
Vrms=10;
L=50*10^-3;
Xl=2*%pi*f*L;
Irms=Vrms/Xl;
Irms=Irms*1000;//converting to mA
disp(Irms,"the rms current is (in mA)");
