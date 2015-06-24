clc;

//page no 37
//problem 2.3
T=12.5*10^-6; //in sec
f0=0;   //dc
f1=1/T*10^-3;   //in kHz
f2=f0+2*f1;
f3=f0+3*f1;
f4=f0+4*f1;
disp('kHz',f4,f3,f2,f1,f0,'The lowest five frequencies are (in kH)');
