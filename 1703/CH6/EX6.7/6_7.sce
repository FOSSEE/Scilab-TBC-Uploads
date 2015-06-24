
clc
//initialisation of variables
l1= 19 //ft
l2= 1 //ft
r1= 0.298
r2= 0.238
r3= 0.359
r4= 0.242
r5= 0.121
d= 6 //in
//CALCULATIONS
m= -(-r4-sqrt(r4^2-4*(3*r1-r5)*(-(d/2)*r2-r3)))/(2*(3*r1-r5))
v2= sqrt((l1+l2)/(r1*m^2-r2))
v3= m*v2
Q2= %pi*v2/d^2
Q3= %pi*v3/d^2
Q= Q2+Q3
//RESULTS
printf ('Q2 = %.3f cusec',Q2)
printf ('\n Q3 = %.2f cusec',Q3)
printf ('\n Total Quantity = %.3f cusecs',Q)
