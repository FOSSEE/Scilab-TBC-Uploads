//Ex 9.18
clc;
clear;
close;
format('v',5);
Ap=-10;//Pass band gain
Q=22;//Quality factor
fc=50;//Hz
R=60;//dB/decade(Roll off rate)
disp("Roll off rate of single op-amp=20 dB/decade. No. of stages will be 3. Desired design can be obtained by cascading three stages.");
n=3;//no. of op-amps(as single op-amp has 20 dB/decade)
fc1=fc;//Hz
fc2=fc;//Hz
fc3=fc;//Hz
Q1=Q*sqrt(2^(1/n)-1);//Quality factor of each stage
Q2=Q1;//Quality factor
Q3=Q1;//Quality factor
Ap1=-(-Ap)^(1/n);//Band pass gain of each stage
Ap2=Ap1;//Band pass gain
Ap3=Ap1;//Band pass gain
//Design of a single op-amp
C=0.1;//micro F//Chosen for the design
disp("Various design parameters for a single stages are :");
disp(C,"Capacitance C(micro F)");
format('v',4);
R2=Q1/%pi/(fc)/(C*10^-6)/1000;//kohm
disp(R2,"Resistance R2(kohm)");
format('v',5);
R1=-R2/(2*Ap1);//kohm
disp(R1,"Resistance R1(kohm)");
format('v',4);
R3=R1/(4*%pi^2*R1*1000*R2*1000*(C*10^-6)^2*(fc)^2-1);//kohm
disp(R3,"Resistance R3(ohm)");
//Answer for R2 is wrong in the book.
