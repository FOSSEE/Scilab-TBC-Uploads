clc
//Intitalisation of variables
clear
T= 25 //C
v= 190 //ml
pt= 740 //mm of hg
p1= 23.8 //mm of hg
p2= 760 //mm of hg
//CALCULATIONS
p= pt-p1
v= v*p/p2
//RESULTS
printf ('Partial pressure of dry gas = %.1f mm',p)
printf ('\n volume of the dry gas = %.f ml',v)
