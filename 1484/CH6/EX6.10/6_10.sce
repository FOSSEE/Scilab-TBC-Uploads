clc 
//initialisation of variables
k= 0.01
l= 24 //ft
g= 32.2 //ft/sec^2
w= 15.6 //lbs/in^2
W= 62.4 //lbs/ft^3
h= 12 //ft
l1= 100 //ft
//CALCULATIONS
f= k*(1+(1/(h/l)))
C= sqrt(2*g/f)
L= w*144/(W)
i= h/l1
v= C*sqrt(k*h/(4*l))
Q= v*60*%pi*(1/l)^2/4
v1= sqrt(h*2*g*(1/l)/(4*f*3*l1))
Q1= v1*60*%pi*(1/l)^2/4
//RESULTS
printf ('Discharge quantity of water= %.3f cubic ft/mt',Q1)


//ANSWER GIVEN IN THE TETBOOK IS WRONG
