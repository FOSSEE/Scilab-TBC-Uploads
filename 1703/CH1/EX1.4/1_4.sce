


clc
//initialisation of variables
clear
spo= 0.9
h= 3 //ft
d= 2 //ft
w= 62.4 //lb/ft^3
H= 0.71 //ft
//CALCULATIONS
do= spo*w
de= w*d
bc= do*h
Pt= (bc*(h/2)+bc*d+de*(d/2))*(h+d)
y= (bc*(h/2)+bc*d+de*(d/2)*(d/3))*(h+d)/Pt+H
//RESULTS
printf("Total pressure = %d lb",Pt)
printf ('\n position of centre of ressure above the base = %.2f ft position of centre of pressure above the axis ',y)

