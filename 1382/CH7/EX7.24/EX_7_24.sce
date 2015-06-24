// Example 7.24:drain resistance and Design R-C phase shift oscillator
clc;
clear;
close;
Mu=55;//
rd=5.5;//resistane in killo ohms
fo=5;//resonant frequency in killo hertz
A= 29;//voltage gain
Rd= (29*rd)/(Mu-A);//resistance in killo ohms
RC=round((1/(2*%pi*fo*10^3*sqrt(6)))*10^6);//R-C in pico second
R=30;;//assume Resistance in killo ohms
C=round(RC*10^-6/(30*10^3)*10^12);//CAPACITANCE IN PICO FARAD
disp(Rd,"drain resistance in killo ohms is")
disp(RC,"R-C in pico second")
disp(C,"Capacitance for the R-C Phase shift oscillator in PICO-farad is")
