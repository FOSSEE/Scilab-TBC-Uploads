close();
clear;
clc;
//Maximum voltage of 'Vsm', angular frequency 'w' of vs, ratio of ripple voltage and average output voltage 'Fs' 
Rl = 1000; //ohm
Vsm = 90; //V
w = 2000; //rad/s
Fs = 0.05;
f = w/(2*%pi);
C = 1/(f*Rl*Fs); //F
//average value of vl 'Vlavg'
Vlavg = Vsm*(1 -1/(2*f*Rl*C)); //V
mprintf("Average value of vl = %0.2f V",Vlavg);