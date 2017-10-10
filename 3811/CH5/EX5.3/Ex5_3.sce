//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi 
//chapter 5
//example 5.3
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
l=50;//load in hp
f=60;//frequency in hertz
V=440;//voltage of the motor in volts
p=4;//Number of poles of the motor
Tmax=2.5;//maximum torque of the motor
T=1;//motor torque
smax=0.1;//maximum slip
ns=(120*f)/p;//synchronous speed in rpm
disp('a). Motor speed :')
s=(T/Tmax)*(smax/2);//the equation is obtained from the equation T=3V^2s/wsR2
n=ns*(1-s);//speed of the motor in rpm
disp(n,'The speed of the motor at full load in rpm is')
disp('b).Copper loss of the rotor')
Pd=l/1.34;//power developed  or Pout in kilowatt
Pcu2=Pd*(s/(1-s));//copper loss in kilowatt which is obtained from two equationsPcu2=Pg*s,Pd=Pg*(1-s)
Pcu=Pcu2*10^3;//copper loss in watt
disp(Pcu,'The copper loss of the rotor in watt is')
disp('c).Starting torque')
//At starting slip s=1
omega=(2*%pi*n)/f;
Pout=Pd*10^3;//Pout value in watts
Tst=(smax^(2)*Pout)/(s*omega);
disp(Tst,'The starting torque in Nm is')
//The answers vary due to round off error
