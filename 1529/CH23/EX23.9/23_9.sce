//Chapter 23, Problem 9
clc
pi=30.8e3                   //input power to rotor
pi1=32e3                    //stator input power
ns=0.35                     //percent
l=0.75e3                    //friction and windage losses
s=1-ns
cl=s*pi
P=pi-cl
Po=P-l
n=(Po/pi1)*100
printf("(a) Rotor copper loss = %.3f kW\n\n",cl/1000)
printf("(b) Efficiency = %.2f percent",n)
