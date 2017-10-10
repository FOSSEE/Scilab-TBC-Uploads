clc;
Te=200;
s=0.04;
c=4; //given multiplying factor of leakage reactance

//3V*V=a*WS
a=Te*s*(((1+(1/s))*(1+(1/s)))+((c+c)*(c+c)));
Test=a*(1/((1+1)*(1+1)+(c+c)*(c+c)));
Tem=a*(1/2)*(1/(1+sqrt((1)*(1)+(c+c)*(c+c))));
mprintf('The starting torque is %f Nm \n The maximun Torque is %f Nm',Test,Tem);
