// Problem no 13.7,Page No.306

clc;clear;
close;

L=3 //m //span
d=5 //cm //depth of each plank
b=15 //cm //width of plank
d_1=1.9 //cm //Diameter of bolt
s=12.5 //cm //spacing of bolt
w=3.3*10**3 //N.m //u.d.l

//Calculations

//Shear Force at 1.5m from support
F=w*1.5

I=b*(5*d)**3*12**-1 //M.I
A=%pi*4**-1*d_1**2 //area of Bolt
Y=5*d*2**-1 //C.G of beam
y_1=d*2**-1 //c.G of top plank

//Shear Force per metre Length 
F_1=F*b*d*(Y-y_1)*10**-6*(I*10**-8)**-1

//Load carried by bolt
W_1=F_1*s*10**-2

//shear stress
X_1=W_1*A**-1*10**+4

//Shear Force per metre Length 
F_2=F*b*2*d*((d+y_1)-Y*10**-6)*(I*10**-8)**-1*10**-6

//Load carried by bolt
W_2=F_2*s*10**-2

//shear stress
X_2=W_2*(A*10**-4)**-1*10**-3

//Reult
printf("Shear stress in a bolt Located at 1.5 m from support is %.2f",X_2);printf(" KN/m**2")
