
clc
clear
//Input data
a=20//Nozzle angle in degrees
b2=30//Blade exit angle in degrees
Vb=130//Mean blade speed in m/s
V1=330//Velocity of steam in m/s
f=0.8//Friction factor
nn=0.85//Nozzle efficiency
p1=20//Pressure in bar
T1=250+273//Temperature in K
p2=0.07//Pressure in bar
rf=1.06//Reheat factor

//Calculations
b1=atand((V1*sind(a))/((V1*cosd(a))-Vb))//Blade angle in degrees
Vr1=((V1*sind(a))/sind(b1))//Velocity in m/s
Vr2=(f*Vr1)//Velocity in m/s
dVw=(Vr1*cosd(b1))+(Vr2*cosd(b2))//Vecoity in m/s
WD=(dVw*Vb)/1000//Workdone in kJ/kg
nb1=((2*dVw*Vb)/V1^2)*100//Efficiency in percent
nst=(nn*nb1)//Efficiency in percent
nin=(nst*rf)*100//Efficiency in percent
h1=2902.3//Enthalpy in kJ/kg
s1=6.5466//Entropy in kJ/kg.K
x2s=(s1-0.5582)/7.7198//Dryness fraction
h2s=(163.16+x2s*2409.54)//Enthalpy in kJ/kg
h12=(0.7041*(h1-h2s))//Change in enthalpy in kJ/kg
n=ceil(h12/WD)//Number of stages

//Output
printf('(a) Work done in the stage per kg of steam is %3.2f kJ/kg \n Stage efficiency is %3.1f percent \n\n (b) Number of stages are %3.0f',WD,nst,n)
