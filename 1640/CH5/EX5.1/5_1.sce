clc 
//initialisation of variables
h= 4 //ft
h1= 3 //ft
r= 3 //ft
h2= 1.5 //ft
//CALCULATIONS
m= (h*h1+(h1^2/2))/(h+(h/2)*sqrt(h1^2+(h1/2)^2))
a= 2*acosd(h2/r)
P= 2*%pi*r*a/360
A= r^2*((2*%pi/3)-sind(a))/2
H= A/(2*%pi)
//RESULTS
printf ('hydraulic mean depth = %.3f ft ',H)
