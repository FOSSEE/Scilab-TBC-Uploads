//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.3
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
p=4;//number of poles
f=60;//frequency in hertz
Tl=60;//load torque in Nm
R1=0.4;
R2=0.1;
Xeq=4;
N1=2;//obtained from the equation N1/N2=2 
n=1000;//motor speed in rpm
a=120;
ns=(a*f)/p;
rps=ns/60;
omegas=(2*%pi*rps);
mprintf("\na)Without injected voltage Vi=0v")
Vs=V/sqrt(3);
R21=R2*(N1^(2));
I2st=Vs/sqrt((R1+R21)^(2)+Xeq^(2));//starting current in A
I2st=ceil(I2st)//rounding off the starting current
Tst=(3*I2st^(2)*R1)/omegas;//staring torque
mprintf("\nThe starting current without injected voltage is %f A",I2st)
mprintf("\nThe starting torque without injected voltage is %f Nm",Tst)
mprintf("\nb)With injected voltage Vi=9.5v")
Vi=9.5;//injected voltage in volt
I2st1=(Vs-Vi)/sqrt((R1+R21)^(2)+Xeq^(2));//starting current with injected resistance in A
thetar=atand(Xeq/(R1+R21));
Tst1=(3/omegas)*((I2st1^2*R1)+(I2st*Vi)*cosd(thetar));
mprintf("\nThe starting current with injected voltage is %f A",I2st1)
mprintf("\nThe starting torque with injected voltage is %f Nm",Tst1)
