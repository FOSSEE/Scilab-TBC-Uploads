//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 10
//example 10.1
//edition 1
//publishing place:Thomson Learning
clc;
clear;
V=208;//source voltage in volts
p=6;//number of poles
R1=0.6;//given resistance in ohm
R2=0.4;//given R'2 in ohm
Xeq=5;//given Xeq in ohm
Td=30;//load torque of the motor in ohm
f=60;//frequency for 3 phase line
ns=(120*f)/p
disp('a)To find the regenerative speed:')
Tl=-Td//reversed load torque
rpss=ns/60;
omegas=(2*%pi*rpss);//angular speed
s=(Tl*omegas*R2)/V^2;
n=ns*(1-s);
mprintf("The regenerative speed is %f rpm",n)
disp('b)To calculate the regenerative speed :')
rps=n/60;
omega=(2*%pi*rps);
Pd=Td*omega;
I2=sqrt(-Pd/(3*(R2/s)*(1-s)));//to find I'2 which is taken as I2
Ploss=3*(R1+R2)*I2'^(2)
Pds=Pd-Ploss;
mprintf("The power delivered to the electric supply is %f watt",Pds)
