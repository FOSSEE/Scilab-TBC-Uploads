//Exa 6.8
clc;
clear;
close;
//given data :
format('v',7);
Po=200;//in uwatts
tau=10;//in ns
F=10;//in MHz
disp("We have : P(w)/P(o)=Po/((1+2*%pi*F*tau)^2)^(1/2)");
Pw=(Po*10^-6)/(1+(2*%pi*F*10^6*tau*10^-9)^2)^(1/2);//in Watts
disp(Pw*10^6,"Optical output power in micro watts : ") ;