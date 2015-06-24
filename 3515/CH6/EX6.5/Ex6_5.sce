// Exa 6.5
format('v',7);
clc;
clear;
close;
// Given data
L= 100;// in µH
L= L*10^-6;// in H
C1= .001;// in µF
C1= C1*10^-6;// in F
C2= .01;// in µF
C2= C2*10^-6;// in F
C= C1*C2/(C1+C2);// in F
// (i)
f= 1/(2*%pi*sqrt(L*C));// in Hz
disp(round(f*10^-3),"Operating frequency in kHz is : ")
// (ii)
Bita= C1/C2;
disp(Bita,"Feedback fraction is : ")
// (iii)
// A*Bita >=1, so Amin*Bita= 1
Amin= 1/Bita;
disp(Amin,"Minimum gain to substain oscillations is : ")

