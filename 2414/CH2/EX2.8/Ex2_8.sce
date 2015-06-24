clc;

//page no 52
//problem 2.8
//All frequencies in kHz
//The time is in ms
//Power in WATTS
//All voltage in volts
//following values are copied from Ex2-7
T=0.2;  //ms
f1=1/T;
//There are only odd numbered harmonics
Ap2p=40; // peak to peak
R=50;  //ohm
A=Ap2p/2;
C1=4*A/%pi;
C3=4*A/(3*%pi);
C5=4*A/(5*%pi);
function [Pn]=Power(Cn,R)
    Pn=Cn^2/(2*R);
endfunction
P1=Power(C1,R);
P3=Power(C3,R);
P5=Power(C5,R);


//Ex2-8
Vrms=A;
P=Vrms^2/R;
disp('W',P,'Total power is');
P135=P1+P3+P5
disp(P135,'Power of fundamental , third and fifth harmonics is');
prcnt=P135/P*100;
disp(prcnt,'The percent of power is ');

