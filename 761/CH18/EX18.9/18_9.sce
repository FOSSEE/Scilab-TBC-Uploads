clc;
// page no 686
// prob no 18.9
// refer fig 18.7(b)
//This is the standard superheterodyne receiver
fc=6870;// the received carrier freq in MHz
IF=70;// IF in MHz
// The local oscillator freq is given as
f_lo=fc-IF;
disp('MHz',f_lo,'The local oscillator freq is ');