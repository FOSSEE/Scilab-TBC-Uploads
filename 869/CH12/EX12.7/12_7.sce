clc
//initialisation of variables
Es= 30*10^6
Ew= 1.5*10^6
w= 500 //lb per ft
span= 12 //ft
t= 0.25 //in
h= 12 //in
n= 3
b= 5 //in
//CALCULATIONS
bw= Es*t/Ew
Ina= n*b*h^3/12
M= (w*span*(h/2)*12)/4
S= M*(h/2)/Ina
Ss= Es*S/Ew
bs= Ew*bw/Es
Ina1= n*t*h^3/12
Ss1= M*(h/2)/Ina1
Sw= Ew*Ss1/Es
//RESULTS
printf ('Maximum bending stress in steel= %.3f psi',Ss1)
printf (' \n Maximum bending stress in wood= %.2f psi',Sw)