// Problem no 13.8,Page No.307

clc;clear;
close;

b=15 //cm //width of plank
t=2.5 //cm //thickness of planf
F_1=1250 //N //Shear Force
F_2=5*10**3 //shaear force transmitted by screw
d=15 //cm //Depth of plank
D=20 //cm  //Overall depth

//Calculations

Y=D*2**-1  //C.G of beam
y_1=t*2**-1 //C.G of flange

I=((b*D**3)-(D*2**-1*b**3))*12**-1 //cm**4 //M.I

//Shear Stress in the Flange at 7.5 cm from N.A
X_1=F_2*b*t*(Y-y_1)*10**-6*(I*10**-8*d*10**-2)**-1*10**-3

//Shear Stress in the web at 7.5 cm from N.A
X_2=X_1*d*(2*t)**-1

//shear stress at N.A
X_max=F_2*(b*t*(Y-y_1)+2*t*d*2**-1*d*4**-1)*10**-6*(I*10**-8*2*t*10**-2)**-1*10**-3

//horizontal shear force per %pitch length to the shearing strength of two bolts we have
//X_h=X_2*10**3*2*t*10**-2*p

//Equating horizontal shear force per %pitch length to the shearing strength of two bolts we have
p=F_1*2*(X_2*10**3*2*t*10**-2)**-1*10**2

//Result
printf("The Min spacing of screw along the beam is %.2f",p);printf(" cm")
