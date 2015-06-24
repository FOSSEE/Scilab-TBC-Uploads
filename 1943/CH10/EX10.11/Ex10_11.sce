
clc
clear
//Input data
P=10000//Power in kW
h=12//Head in m
Nr=2//Speed ratio
Fr=0.65//Flow ratio
x=0.3//Diameter of hub is 0.3 times the eternal diameter of the vane 
on=94//Overall efficiency in percent

//Calculations
Q=(P/(9.81*h*(on/100)))//Discharge in m^3/s
Vr1=(Fr*sqrt(2*9.81*h))//Velocity in m/s
Ab=(Q/Vr1)//Area of flow in m^2
D=sqrt(((Ab*4)/3.14)/(1-x^2))//Diameter of runner in m
Vb=(Nr*sqrt(2*9.81*h))//Velocity in m/s
N=((Vb*60)/(3.14*D))//Speed in rpm
f=50//Taking frequency as 50 Hz
p=(120*50)/N//Number of poles
N1=(120*f)/int(p)//Speed in rpm
Ns=(N1*sqrt(P))/h^(5/4)//Specific speed

//Output
printf('(a) the speed is %3.1f rpm \n (b) the diameter of the runner is %3.2f m \n (c) the specific speed is %3.0f',N1,D,Ns)
