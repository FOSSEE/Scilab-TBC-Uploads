
clc 
//initialisation of variables
l= 6 //ft
b= 4 //ft
w= 62.4 //lbs/ft^3
h= 10 //ft
//CALCULATIONS
P= w*l*b*(b/2)
hn= (b/2)+(l*b^3/(12*l*b*(b/2)))
P1= w*(h+(b/2))*l*b
h1= (h+(b/2))+(l*b^3/(12*l*b*(h+(b/2))))
//RESULTS
printf("Total pressure = %d lb",P1)
printf("\n Depth = %.2f ft",hn)
printf ('\n pressure in ft in case 2= %.3f ft ',h1)
