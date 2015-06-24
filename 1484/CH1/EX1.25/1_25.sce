clc 
//initialisation of variables
W= 62.4 //lbs/ft^3
a= 140 //degrees
h= 20 //ft
w= 6 //ft
h1= 17 //ft
h2= 5 //ft
//CALCULATIONS
P1= W*h1^2*w/2
P2= W*h2^2*w/2
P= P1-P2
y= (P1*(h1/3)-P2*(h2/3))/P
R= P/(2*sind((180-a)/2))
Rt= y*R/h
Rb= R-Rt
//RESULTS
printf ('Rt= %.f lbs ',Rt)
printf ('\n Rb= %.f lbs ',Rb)
