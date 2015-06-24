clc
//initialisation of variables
x1= 3 //ft
x2= 3 //ft
x3= 3 //ft
x4= 3 //ft
W1= 4 //kips
W2= 8 //kips
l= x1+x2+x3+x4
//CALCULATIONS
b= x2+x3+x4
b1= x4
a= x1
x= l/2
P= (((W1*b*(l/b*(x-a)^3+(l^2-b^2)*x-x^3))/(6*l))+((W2*b1*x*(l^2-x^2-b1^2))/(6*l)))*(48/l^3)
R1= 3+2-(P/2)
R2= P
R3= 1+6-(P/2)
//RESULTS
printf ('R1= %.3f kips',R1)
printf (' \n R2=%.2f kips',R2)
printf (' \n R3=%.3f kips',R3)
