//Exa 1.8
clc;
clear;
close;
//given data
format('v',7);
Phase=3;//no. of phase
f=50;//in Hz
P=16;//No. of pole alternator
Slots=144;//No. of slots
conductors=10;//conductors per slot
fi=2.48*10^-2;//in weber
n=Slots/P;//No. of slots/pole
Zr=Slots*conductors/Phase;//No. of conductors/Phase
T=Zr/2;//N. of turns/phase
Beta=180/n;//Angular displacement between slots in degree
m=n/Phase;//No. of slots/pole/Phase
Kd=sind(m*Beta/2)/(m*sind(Beta/2));//Distribution factor :unitless 
disp("The coil span falls short of 2 slots i.e. "+string(2*180/9)+" degree.");
alfa=40;//short pitch angle in degree
Kp=cosd(alfa/2);//Unitless
//Formula : f=P*N/120;//in Hz
N=120*f/P;//in rpm
Ep=4.44*Kd*Kp*fi*f*T;//in Volts
LineVoltage=sqrt(3)*Ep;//in Volts
disp("The speed is "+string(N)+" in rpm");
disp("The line emf is "+string(LineVoltage)+" Volts");
//Note : Answer in the book is not accurate.