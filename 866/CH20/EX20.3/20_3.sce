clc
//initialisation of variables
W1= 3 //KN
W2= 4 //KN
W3= 5 //KN
x1= 0.3 //m
x2= 0.1 //m
x3= 0.5 //m
x4= 0.7 //m
//CALCULATIONS
Skmax= W3*x1+W2*x2
Sk1= W1*(-x4)+W2*(-x3)+W3*(-x1)
Sk2= W1*(x2)+W2*(-x4)+W3*(-x3)
//RESULTS
printf ('Sk(max)= %.2f KN',Skmax)
printf (' \n Sk= %.2f KN',Sk1) 
printf (' \n Sk= %.2f KN',Sk2)
