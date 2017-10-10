//Example_a_4_10 page no:179
clc;
Vrms=5;
f=5*1000;
C=0.01*10^-6;
Xc=1/(2*%pi*f*C);
Irms=Vrms/Xc;
Irms=Irms*1000;//converting to mA
disp(Irms,"the rms current in the circuit is (in mA)");
