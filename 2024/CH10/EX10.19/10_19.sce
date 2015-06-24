clc
//Initialization of variables
R0=0.73 //atm ft^3/mol R
a1=578.9
a2=3675
b1=0.684
b2=1.944
n1=0.396 //mol
n2=0.604 //mol
V=8.518 //ft^3
T=460+460 //R
//calculations
p1=R0*n1*T/(V-n1*b1) - a1*n1^2 /V^2
p2= R0*n2*T/(V-n2*b2) -a2*n2^2 /V^2
p=p1+p2
pa=(n1+n2)*R0*T/V
err=(pa-p)/p
pb=58.7 //atm
err2= (p-pb)/p
//results
printf("Pressure = %.1f atm",p)
printf("\n error in ideal case = %.1f percent",err*100)
printf("\n error in  case 2 = %.1f percent",err2*100)
//The answer is a bit different due to rounding off error in textbook
