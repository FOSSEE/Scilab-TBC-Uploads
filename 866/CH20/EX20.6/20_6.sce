clc
//initialisation of variables
W1= 9 //KN
W2= 15 //KN
W3= 15 //KN
W4= 8 //KN
W5= 8 //KN
x1= 2 //m
x2= 2.3 //m
x3= 2.7 //m
x4= 2.3 //m
l= 20 //m
l1= 10.105 //m
//CALCULATIONS
x= (W2*x1+W3*(x1+x2)+W4*(x1+x2+x3)+W5*(x1+x2+x3+x4))/(W1+W2+W3+W4)
Ra= (W1+W2+W3+W4+W5)*l1/l
Mk= ((W1+W2+W3+W4+W5)/l)*l1*l1-W1*(x1+x2)-W2*x2
//RESULTS
printf ('Ra= %.1f KN',Ra)
printf (' \n Mk= %.1f KN',Mk) 
