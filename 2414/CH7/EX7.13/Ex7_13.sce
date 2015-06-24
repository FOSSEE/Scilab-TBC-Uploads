clc;
close();
//page no 240
//prob no. 7.13
delta_f=75;   //kHz
fm=[.025 .075 .75 1.5 5 10 15]   //in kHz (From prob-7.12)
delta_theta=delta_f/fm(7);
Bt=12*fm;   //applying carsom's rule
disp(delta_theta,'Delta theta=');
plot(fm,Bt);
xtitle('Bandwidth of PM','fm,kHz','Bt,kHz')
