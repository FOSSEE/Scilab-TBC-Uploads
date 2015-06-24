
clc
clear
//Input data
P=6000//Power in kW
h=300//Net head availabe in m
N=550//Speed in r.p.m
rd=(1/10)//Ratio of jet diameter to wheel diameter
nh=0.85//Hydraulic efficiency 
Cv=0.98//Coefficient of velocity
f=0.46//Speed ratio
d=1000//Density in kg/m^3

//Calculations
V1=Cv*sqrt(2*9.81*h)//Velocity in m/s
Vb=f*sqrt(2*9.81*h)//Velocity in m/s
Q=((P*10^3)/(nh*d*9.81*h))//Discharge in m^3/s
D=((Vb*60)/(3.14*N))//Diameter in m
d=(D/10)//Diameter of jet in m
n=(Q/((V1*(3.14/4)*d^2)))//Number of jets

//Output
printf('(a) the number of jets are%3.0f \n (b) diameter of each jet is %3.3f m \n (c) diameter of the wheel is %3.2f m \n (d) the quantity of water required is %3.1f m^3/s',n,d,D,Q)
