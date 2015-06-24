clear
clc
//initialisation of variables
r1= 1/3
r2= 7/12
l= 5000 //ft
l1= 10000 //ft
d= 27 //in
d1= 18 //in
Q= 10 //cuses
f= 0.006
//CALCULATIONS
Q2= Q/(sqrt(r2/r1)+1)
Q1= Q-Q2
H= (f*l*Q^2/(10*(d/12)^5))+(f*l1*Q1^2/(3*10^(d1/12)^5))
//RESULTS
printf ('total difference in head = %.2f ft',H)


//ANSWER GIVEN IN THE TEXTBOOK IS WRONG
