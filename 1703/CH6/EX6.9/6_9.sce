
clc
//initialisation of variables
Q= 450 //gal/min
w= 6.24 //lb/ft^3
f= 0.005
l1= 1000 //ft
l2= 2000 //ft
r1= 1.6
r2= 4.4
r3= 0.8
r4 = 12.85
h1= 59.1 //ft
h2= 40.19 //ft
v= 1.2 //ft/sec
f= 0.0056
l= 10 //ft
//CALCULATIONS
Q1=  Q/(w*60)
Q2= (r1+sqrt(r1^2+4*r2))/2
Q3= Q2-Q1
Q4= (-r3+sqrt(r3^2+4*r4))/2
Q5= Q4+Q1
d= (f*5500*v^2/(l*(h1-h2)))^0.2*12
//RESULTS
printf ('flow in to reservoir B= %.2f cusecs',Q3)
printf ('\n flow in to reservoir D= %.1f cusecs',Q5)
printf ('\n diameter of MN= %.f in',d)
