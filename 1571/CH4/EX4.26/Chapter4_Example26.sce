clc
clear

//INPUT
a1=0*10^-4;//first horizontal displacement in cm
a2=5.6*10^-4;//second horizontal displacement in cm
a3=-4.7*10^-4;//third horzontal displacement in cm
a4=-10.8*10^-4;//fourth horizontal displacement in cm
a5=6.6*10^-4;//fifth horizontal displacement displacement in cm
a6=-9.8*10^-4;//sixth horizontal displacement in cm
a7=-11.2*10^-4;//7th horizontal displacement in cm
a8=-4.0*10^-4;//8th horizontal displacement in cm
a9=15.0*10^-4;//9thhorizontal displacement in cm
a10=19.1*10^-4;//10th horizontal displacement in cm
a11=16.0*10^-4;//11ht horizontal displacement in cm
T=293;//temperature of the particle in K
v=0.01;//viscosity in cgs
r=1.15*10^-5;//radius of the particle in cm
R=8.32*10^7;//universal gas constant in kj/kg mole
t=30;//time for observation of each in sec

//CALCULATIONS
x=(a1^2+a2^2+a3^2+a4^2+a5^2+a6^2+a7^2+a8^2+a9^2+a10^2+a11^2)/11
n=R*T*t/(x*3*3.14*v*r);//no.of molecules in the observation 

//OUTPUT
mprintf('the value of n is %3f',n)
