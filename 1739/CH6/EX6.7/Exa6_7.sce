//Exa 6.7
clc;
clear;
close;
//given data :
format('v',6);
tau=10;//in ns
disp("To find out electrical modulation bandwidth, first we will find out optical modulation bandwidth, which is determined by putting : P(w)/P(o)=1/2");
disp("It gives : 1/((1+omega*tau)^2)^(1/2) = 1/2");
//Formula :omega=2*%pi*F;
F=sqrt(3)/(2*%pi*tau*10^-9);//in Hz
F=F*10^-6;//in MHz
EMB=F/sqrt(2);//in MHz
disp(EMB,"Electrical Modulation Bandwidth in MHz : ") ;