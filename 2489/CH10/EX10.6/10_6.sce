clc
//Intitalisation of variables
clear
Kp= 1.78 //atm
n= 0.04 //mole
p= 2 //atm
x= 0.041
v= 4 //lit
x1= 0.0692
//CALCULATIONS
y= x/p
a= y/n
y1= x1/v
a1= y1/x
//RESULTS
printf ('Number of moles = %.4f moles',y)
printf ('\n Fraction of dissociation = %.3f ',a)
printf ('\n Number of moles = %.4f moles',y1)
printf ('\n Fraction of dissociation = %.3f ',a1+0.01)
