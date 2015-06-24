clc
//Initialization of variables
mu1=1.4 //D
mu2=1.4 //D
angle=180 //degrees
d=3 //nm
D=4.7*10^-30 //C m
//calculations
Vmol=D*D*(1-3*(cosd(angle))^2)/(4*%pi*8.854*10^-12 *(d*10^-9)^3)
V=Vmol*(6.023*10^23)
//results
printf("Potential energy = %.1f J/mol",V)
