clc
//initialisation of variables
v= 3.6 //cc
v1= 0.89 //cc
s= 3.146 //A
//CALCULATIONS
r= (v/v1)^(1/3)
r1 = s/(1+r)
r2 = s-r1
//RESULTS
printf (' radius of k+= %.3f A ',r1)
printf (' \n radius of cl-= %.3f A ',r2)
