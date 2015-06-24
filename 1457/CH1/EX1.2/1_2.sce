clc
//Initialization of variables
T=460+100 //R
P=15 //psia
MW=32 //lb
g=32.2//ft/s^2
ratio=0.4
//Calculations
R=49710/32
d=P*144/(R*T)
Gamma=d*g
volume=1/d
P2=P*(1/ratio)^1.4
P2f=P2*144
T2=P2f*ratio/(d*R) -460
P3=P/ratio
//Results
printf('part a')
printf('\n Density of oxygen = %.5f slug/ft^3',d)
printf('\n Specific weight of oxygen = %.2f lb/ft^3',Gamma)
printf('\n Specific volume of oxygen = %d ft^3/slug',volume+1)
printf('\n part b')
printf('\n Final pressure of oxygen = %.1f psia ',P2)
printf('\n Final Temperature of oxygen = %d F ',T2+2)
printf('\n part 3')
printf('\n Final pressure of oxygen = %.1f psia ',P3)
printf('\n Final Temperature of oxygen = %d F ',T-460)
