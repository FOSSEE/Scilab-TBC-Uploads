clc
// initialization of variables
clear
// Material constants
E=200 //GPa
G=77.5 // GPa
Lh=5 // Lh = L/h
// part (b)
rhs1=1.8*Lh*E/G
rhs2=7*12*Lh^3/16
LHS=1.8*Lh*E/G+7*12*Lh^3/16
e=rhs1/LHS*100
printf('The error in neglecting small terms is %.2f per cent',e)
