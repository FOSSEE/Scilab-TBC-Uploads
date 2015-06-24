clc
clear
//input
v=400//pd
d=4*10^-3 //distance of seperation
B=0.52//flux density
na=6*10^23//avagadro number
//calculation
x=2*1.6*10^-19/(4*10^-26)//specific charge of ions
r=1*10^5/(8*10^6*B*B)// path radius
//output
printf("the specific charge of ions is %3.0e C/kg",x)
printf("\n the path radius is %3.3e m",r)
