clc;

//page no 51
//problem 2.7
//All frequencies in kHz
//The time is in ms
//Power in WATTS
//All voltage in volts
T=0.2;  //ms
f1=1/T;
disp(f1,'The fundamental frequency is');
//There are only odd numbered harmonics
Ap2p=40; // peak to peak
R=50;  //ohm
A=Ap2p/2;
C1=4*A/%pi;
C3=4*A/(3*%pi);
C5=4*A/(5*%pi);
disp('respectively',C5,C3,C1,'The magnitude of fundamental , third and fifth harmonics are ');
function [Pn]=Power(Cn,R)
    Pn=Cn^2/(2*R);
endfunction
P1=Power(C1,R);
P3=Power(C3,R);
P5=Power(C5,R);
//power is calculated using the function Power defined above
disp('Frequency  Amplitude   Power')
table={f1,C1,P1;3*f1,C3,P3;5*f1,C5,P5};
disp(table);
