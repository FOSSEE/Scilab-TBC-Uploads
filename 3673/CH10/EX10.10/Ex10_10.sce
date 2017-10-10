//Example 10_10 page no:455
clc;
//given
K=0.9;
L1=10^-6;
L2=100*10^-6;
C=0.1*10^-6;
Rs=10;
R2=10;
Vi=15;
//calculating the resonance frequency
M=K*sqrt(L1*L2);
Wr=1/sqrt(L2*C);
Fr=Wr/(2*%pi);
Fr=Fr/1000;//converting to kilo Hz
disp(Fr,"the resonant frequency is (in kHz)");
//calculating the output voltage
Vo=M*Vi/(C*((Rs*R2)+(Wr^2*M)));
Vo=Vo*1000;
disp(Vo,"the output voltage is (in mV)");
//maximum value of output voltage
Vom=Vi/(2*Wr*C*sqrt(Rs*R2));
disp(Vom,"maximum value of output voltage is (in V)");
