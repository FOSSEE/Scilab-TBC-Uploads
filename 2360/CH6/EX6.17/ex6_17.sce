// Exa 6.17
format('v',7);clc;clear;close;
// Given data
f = 1;//frequency in kHz
f = f * 10^3;// in Hz
R1 = 400;//resistance in ohm
R2 = 150;//resistance in ohm
C2 = 0.2;//capacitance in µF
C2 = C2 * 10^-6;// in F
XC2= 1/(2*%pi*f*C2);
R3 = 100;//resistance in ohm
L3 = 10;//inductance in mH
L3 = L3 * 10^-3;// in H
XL3= 2*%pi*f*L3;
Z1= R1+%i*0;// in Ω
Z2= R2-%i*XC2;// in Ω
Z3= R3+%i*XL3;// in Ω
Z4= Z2*Z3/Z1;// in Ω
R4= real(Z4);//resistance in Ω
XC4= abs(imag(Z4));// in Ω
C4= 1/(2*%pi*f*XC4);// in F
C4= C4*10^6;// in µF
disp("The components of branch CD : ")
disp("R4= "+string(R4)+" Ω")
disp("C4= "+string(C4)+" µF")
