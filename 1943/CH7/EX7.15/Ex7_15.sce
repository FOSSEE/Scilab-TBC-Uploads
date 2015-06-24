
clc
clear
//Input data
p1=35//Pressure in bar
T1=350+273//Temperature in K
p2=0.07//Pressure in bar
x=1/4//Fraction of drop in isentropic enthalpy
a=20//Nozzle angle in degrees
nn=88//Nozzle efficiency in percent
y=0.2//Velocity ratio
b2=30//Exit blade angle in degrees
b4=30//Exit blade angle in degrees
f=0.9//Friction coefficienct
in=75//Internal efficiency of the turbine in percent

//Calculations
h1=3106.4//Enthalpy in kJ/kg
s1=6.6643//Entropy in kJ/kg.K
x2s=(s1-0.5582)/7.7198//dryness fraction
h2s=(163.16+x2s*2409.54)//Enthalpy in kJ/kg
dh=(h1-h2s)//Change in enthalpy in kJ/kg
h13s=x*dh//Change in enthalpy in kJ/kg
h13=(nn/100)*h13s//Change in enthalpy in kJ/kg
V1=(44.72*sqrt(h13))//Velocity in m/s
Vb=(y*V1)//Velocity in m/s
b1=atand((V1*sind(a))/((V1*cosd(a))-Vb))//Angle in degrees
Vr1=((V1*sind(a))/sind(b1))//Velocity in m/s
Vr2=(f*Vr1)//Velocity in m/s
dVw1=(Vr1*cosd(b1))+(Vr2*cosd(b2))//Velocity in m/s
V2=sqrt((Vr2*sind(b2))^2+((Vr2*cosd(b2))-Vb)^2)//Velocity in m/s
V3=f*V2//Velocity in m/s
b3=atand((V3*sind(b2))/((V3*cosd(b2))-Vb))//Angle in degrees
Vr3=((V3*sind(b2))/sind(b3))//Velocity in m/s
Vr4=f*Vr3//Velocity in m/s
dVw2=(Vr3*cosd(b3))+(Vr4*cosd(b4))//Velocity in m/s
dVw=(dVw1+dVw2)//Velocity in m/s
nb1=((2*dVw*Vb)/V1^2)*100//Efficiency in percent
ns=(nn*nb1)/100//Efficiency in percent
ht=(in/100)*dh//Total change in enthalpy in kJ/kg
hc=(ns/100)*h13s//Total change in enthalpy in kJ/kg
pp=(hc/ht)*100//Percentage of enthalpy

//Output
printf('Efficiency of first stage is %3.2f percent \n Percentage of the total power developed by the turbine is %3.2f percent',ns,pp)
