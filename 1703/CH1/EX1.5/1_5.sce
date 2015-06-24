

clc
//initialisation of variables
clear
a= 30 //degrees
b= 30 //degrees
h= 20 //ft
h1= 10 //ft
h2= 15 //ft
h3= 16 //ft
w= 62.4 //lb/ft^3
h4= 10/3 //ft
//CALCULATIONS
Rt= (1/h3)*((w*(h*h2^2*(h2/3)/(2*sqrt(3))))-(w*(h*h1^2*h4/(2*sqrt(3)))))
R= ((w*(h*h2^2/(2*sqrt(3))))-(w*(h*h1^2/(2*sqrt(3)))))
Rb= R-Rt
//RESULTS
printf ('Force at the hinge = %.f lb ',Rt)
printf ('\n Force at the hinge = %.f lb ',Rb)

//Round off error in textbook
