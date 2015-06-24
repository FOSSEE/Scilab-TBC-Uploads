clc
clear
//Input data
E=(200*100)//Electric field in V/m
B=0.2//Magnetic field in T
B1=0.3//Magnetic field in the main chamber in T
q=(1.6*10^-19)//Charge of the electron in coloumbs
m=[12,13]//Carbon isotopes C12 and C13
M=(1.67*10^-27)//AMU(Atomic Mass Unit) in kg

//Calculations
v=(E/B)//Velocity in m/s
s=(2*v*(m(2)-m(1))*M*100)/(q*B1)//Seperation in cm

//Output
printf('Seperation on photographic plate is %3.4f cm',s)
