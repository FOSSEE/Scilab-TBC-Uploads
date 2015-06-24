//Ex 6.18
clc;
clear;
close;
format('v',5);
//Data given
f0=5;//kHz
D=60;//%////duty cycle
VCC=12;//V
//As D=t1/(t1+t2)
t2BYt1=1/(D/100)-1;//ratio of t1 & t2
//RB/(2*RA-RB)=t2/t1
RAbyRB=(1/t2BYt1+1)/2;//Ratio of RA & RB
disp("Various design parameters are :");
//Let CT=0.05 micro F for this design choosing between 0.01 & 1 microo F
CT=0.05;//micro F
disp(CT,"CT(micro F)");
RA=1/(f0*10^3)/(5/3)^2/(CT*10^-6)/1000;//kohm
disp(RA,"RA(kohm)");
RB=RA/RAbyRB;//kohm
disp(RB,"RB(kohm)");
