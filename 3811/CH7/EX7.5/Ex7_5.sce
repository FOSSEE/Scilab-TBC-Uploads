//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.5
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
p=6;//number of poles
Pout=30*746;//output power interms of watt
f=60;//frequency in hertz
R1=0.5;//stator resistance in ohm
R2=0.5;//rotor resistance reffered to stator in ohm
ns=1200;//synchronus speed in rpm
rps=ns/60;
omegas=(2*%pi*rps);//angular synchronous speed
Td=120;//load torque constant
s=(Td*omegas*R2)/V^2;
n=ns*(1-s);//the speed at full voltage in rpm
n=ceil(n)
Vnew=0.8*V;//when voltage is reduced by 20%
snew=(V^2*s)/Vnew^2;//new slip after the reduction of 20% of the rated voltage
nnew=ns*(1-snew);//new speed of the motor in rpm
nnew=ceil(nnew)
mprintf("The speed of the motor after the reduction of the rated voltage is %d rpm",nnew)
