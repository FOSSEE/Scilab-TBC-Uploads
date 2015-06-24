clc
//initialization of variables
clear
G=8*10^5 //kg/cm^2
//part (a)
T =20 //kg-m
t1=0.9 //cm
t2=0.5 //cm
b1=6.8 //cm
b2=14.2 //cm
I0=1/3*(2*b1*t1^3+b2*t2^3)
Zt=I0/max(t1,t2)
fs=T*100/Zt
Phi=T*100/(G*I0)
printf('part (a)')
printf('\n The maximum shear stress and twist rate are respectively \n %d kg/cm^2, %.2e radians/cm ',fs,Phi)

//part (b)
t1=1 //cm
t2=1 //cm
b1=10 //cm
b2=9 //cm
I0=1/3*(b1*t1^3+b2*t2^3)
Zt=I0/max(t1,t2)
fs=T*100/Zt
Phi=T*100/(G*I0)
printf('\n part (b)')
printf('\n The maximum shear stress and twist rate are respectively \n %d kg/cm^2, %.2e radians/cm ',fs,Phi)

//part (c)
t1=0.76 //cm 
t2=0.48 //cm
b1=8 //cm
b2=14.04 //cm
I0=1/3*(2*b1*t1^3+b2*t2^3)
Zt=I0/max(t1,t2)
fs=T*100/Zt
Phi=T*100/(G*I0)
printf('\n part (c)')
printf('\n The maximum shear stress and twist rate are respectively \n %d kg/cm^2, %.2e radians/cm ',fs,Phi)

//part(d)
t=1 //cm 
b=19 //cm
I0=1/3*t^3*b
Zt=I0/t
fs=T*100/Zt
Phi=T*100/(G*I0)
printf('\n part (d)')
printf('\n The maximum shear stress and twist rate are respectively \n %d kg/cm^2, %.2e radians/cm ',fs,Phi)

// Twist rate: answers differ by a scale of 10. wrong answers in the text
