clc
clear
//input
d=6*10^-5
w=0.1
er=9.4 //relative permittivity of medium
c=1*10^-6 //capacitance
//calculation
l=c*d/(8.9*10^-12*er*w)//parallel plate capacitor formula
//output
printf("the length of wax paper is %3.3f m",l)
