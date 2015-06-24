//Chapter 22, Problem 19
clc
V=100                   //supply voltage
I=15                    //current in ampere
T=12                    //torque in Nm
n=1500/60
n1=((V*I)/(T*2*%pi*n))*100
los=((T*2*%pi*n)-(V*I))
printf("(a) Efficiency = %.2f percent \n\n",n1)
printf("(b) Power loss = %f W",los)
