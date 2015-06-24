clc
clear
//Initialization of variables
r=4 //ft
n=300 //rpm
F=60 //lb
//calculations
Bhp=2*%pi*r*F*n/33000
//results
printf("Bhp of the engine = %.1f",Bhp)
