//chapter 8 example 3//
clc
clear
//capacitance=Cd,band width=B,temperature=T,current=I,load resistance=Rl,signal to noise ratio=S/N=R,optimum value of multiplication factor=Mopt//
Cd=6*(10^-12);//in farads//
B=40*(10^6);//in Hz//
Rl=1/(2*%pi*Cd*B);//load rsistance//
printf("\n a) load resistance=%f ohms\n",Rl)
Kb=1.38*(10^-23);
T=300;//in kelvin//
e=1.6*(10^-19);//charge of the electron//
x=0.3;
Rl=666;//in ohms//
Ip=2*(10^-7);
Mopt=((4*Kb*T)/(e*x*Rl*Ip))^(1/2.3);
printf("\n b) optimum value of multiplication factor=%f \n",Mopt)
R=((Mopt*Ip)^2)/((2*e*B*Ip*(Mopt^2.3))+(4*Kb*T*B/Rl))*(0.01089);
printf("\n c) signal to noise ratio=%f \n",R)
