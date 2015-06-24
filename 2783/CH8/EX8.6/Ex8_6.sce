clc
//initialization of new variables
clear
Re=3*10^6
CdT=0.004
x=0.4 //40%
//calculations
Cd=2*0.664/sqrt(Re)
Cd=x*Cd+(1-x)*CdT
Cd=2*Cd
//results
printf('For two sides the drag coefficient is estimated as %.4f',Cd)
