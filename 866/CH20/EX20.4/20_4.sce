clc
//initialisation of variables
W= 2 //KN/m
l= 2 //m
x1= 0.05
x2= 0.25
x3= 0.75
x4= 0.55
x5= 1.5
x6= 1.875
l1= 0.5 //m
l2= 1.5 //m
//CALCULATIONS
Sk= W*l*(1/2)*(x1+x2)
Sk1= -W*l*(1/2)*(x3+x4)
Mk= W*((1/2)*(x5+x6)*l1+(1/2)*(x5+x6)*l2)
//RESULTS
printf ('Sk(max +)= %.2f KN',Sk)
printf (' \n Sk(max -)= %.2f KN',Sk1) 
printf (' \n Mk(max)= %.2f KN m',Mk)
