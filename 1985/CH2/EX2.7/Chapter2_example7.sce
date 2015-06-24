clc
clear
//Input data
l=3//Length of the wire in m
Y=(12.5*10^10)//Youngs modulus in N/m^2
d=1//diameter of the wire in mm
M=10//load applied in kg
p=0.26//Poissons ratio

//Calculations
dl=(M*9.8*l)/(3.14*(d/2)^2*10^-6*Y)//Increase in length in m
sl=(p*dl)/l//Lateral strain
dd=(sl*d*10^-3)//Decrease in diameter in m
E=dl/10^-3//Extensio produced in m*10^-3
lc=dd/10^-7//Lateral compression in m*10^-7

//Output
printf('Extension produced is %3.2f *10^-3 m \n Lateral compression produced is %3.3f *10^-7 m',E,lc)

