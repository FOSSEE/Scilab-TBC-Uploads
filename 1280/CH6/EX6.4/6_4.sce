clc
//initialisation of variables
n= 9 
N= 3000 //rpm
s= 0.75 //inch
d= 0.5 //inch
//CALCULATIONS
Q= n*N*s*%pi*d^2/(4*231)
//RESULTS
printf ('volume flow rate = %.1f gpm',Q)
