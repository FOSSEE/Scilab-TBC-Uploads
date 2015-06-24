clc
//initialisation of variables
w= 62.4 //lb/ft^3
H1= 15 //ft
B= 10 //ft
H2= 5 //ft
r= sqrt(19)/10
l= 16 //ft
//CALCULATIONS
F= 0.5*w*(H1^2-H2^2)*B/2240
N= F*0.5/r
h= H2*(1-(H2/H1)^3)/(1-(H2/H1)^2)
R1= N*h/l
R2= N-R1
//RESULTS
printf (' reaction between the gates= %.1f tonf',F)
printf (' \n reaction forces on the finges= %.1f tonf',R2)
