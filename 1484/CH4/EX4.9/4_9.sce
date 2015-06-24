
clc 
//initialisation of variables
H1= 9 //ft
A= 2 //ft^2
H2= 4 //ft
d= 2.25 //in
t= 60 //sec
g= 32.2 //ft/sec^2
//CALCULATIONS
a= (d/12)^2
Cd= (A*H2*(H2-A))/(t*a*sqrt(2*g))
//RESULTS
printf ('coefficient of dicharge = %.3f ',a)


//ANSWER GIVEN IN THE TEXTBBOK IS WRONG..VERIFIED WITH CALCULATOR
