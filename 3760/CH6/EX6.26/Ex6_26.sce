clc;
f=50;
P=4;
Pm=10000; //Rated output
N=1425; 
Nm=1200; //Speed at which maximun torque is developed

Ns=(120*f)/P;
s=(Ns-N)/Ns;
Ws=(2*%pi*Ns)/60;
Tefl=(Pm/Ws)*(1/(1-s));
smT=(Ns-Nm)/Ns;
Tem=Tefl*((s/smT)+(smT/s))*(1/2);
Test=Tem*(2)*(1/((1/smT)+(smT/1)));
mprintf('The starting torque is %f Nm',Test);
