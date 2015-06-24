clc
clear
//Initialization of variables
L=1000 //ft
Q=2000/(7.48*60) //ft63/s
g=32.2 //ft/s^2
p=5 //psi/1000 ft
gam=62.4
sp=0.7
f=0.02
r0=0.904/2
e=0.00015
mu=7e-6 //lb-ft/s^2
L=1000 //ft
//calculations
hl=p*144/(sp*gam)
D5=f*8*L*Q^2 /(%pi^2 *g*hl)
D=D5^(1/5)
Nr=4*Q*sp*gam/(g*(%pi*D*mu))
f2=0.0145
D5=f2*8*L*Q^2 /(%pi^2 *g*hl)
D1=D5^(1/5)
//results
printf("Diameter of steel pipe = %.3f ft",D1)
