clc
clear
//Initialization of variables
p1=45.8 //atm
p2=36 //atm
t1=343.3 //R
t2=766.8 //R
n1=0.396 //mol
n2=0.604 //mol
V=8.518 //ft^3
R0=0.73
T=920 //R
//calcualtions
vr1=p1*(V/n1)/(R0*t1)
vr2=p2*(V/n2)/(R0*t2)
tr1=T/t1
tr2=T/t2
disp("From compressibility charts,")
z1=1
z2=0.79
Z=n1*z1+n2*z2
p=Z*R0*T/V
p2=62 //atm
err=(p-p2)/p
//results
printf("In case 1, pressure = %.1f atm",p)
printf("\n In case 2, pressure using trail and error method = %d atm",p2)
printf("\n Error = %d percent",err*100)
