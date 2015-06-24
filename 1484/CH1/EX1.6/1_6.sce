clc
//initialisation of variables
W= 64 //lbs/ft^3
h1= 27 //ft
h2= 9 //ft
w= 40 //ft
//CALCULATIONS
Pr= w*W*h1*h1/2
Pl= w*W*h2*h2/2
y1= h1/3
y2= h2/3
y= (Pr*y1-Pl*y2)/(Pr-Pl)
//RESULTS
printf (' point of application = %.2f ft',y)
