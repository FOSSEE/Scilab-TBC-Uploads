clc
//Intitalisation of variables
clear
r1= 1.3591
d= 0.791 //kg/m^3
mw= 58.08 //gms
x1= 2.42 //gm
x2= 1.10 //gm
x3= 2.21 //gm
n1= 3 //atoms
n2= 6 //atoms
//CALCULATIONS
MR= (r1^2-1)*mw/(d*(r1^2+2))
cv= x1*n1+x2*n2+x3
//RESULTS
printf ('Molar refraction of this substance = %.2f cc',MR)
printf ('\n Calculated value of Molar refraction of this substance = %.2f cc',cv)
