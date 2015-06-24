clc;
close();
clear();
//page no 258
//prob no. 7.18
//All frequencies in kHz
Kd=2;    //V/kHz
fc=100;
// part a
f=102.5;
delta_f=f-fc;
vd=Kd*delta_f;    //V
disp(vd,'(a)  The first case result is');
// part b
f=98.5;
delta_f=f-fc;
vd=Kd*delta_f;   //V
disp(vd,'(a)  The second case result is');
