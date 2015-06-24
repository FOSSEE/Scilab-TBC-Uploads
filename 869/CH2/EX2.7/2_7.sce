clc
//initialisation of variables
Fy1= 2 //kips
Fy2= 5 //kips
Fy3= 10 //kips
Fy4= 3 //kips
L= 5 //ft
Ry= Fy1+Fy2+Fy3+Fy4
x= (Fy1*L+Fy2*2*L+Fy3*3*L+Fy4*4*L)/Ry
//RESULTS
printf ('Ry= %.2f kips',Ry)
printf (' \n x=%.1f ft to the right of O',x)
