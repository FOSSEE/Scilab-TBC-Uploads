clc
//initialisation of variables
C= 100 //ft^0.5/sec
m= 2 //ft
i= 0.0003
y1= 2.6 //ft
y2= 2.5 //ft
//CALCULATIONS
u= C*sqrt(m*i)
f= u^2/(2*32.2)
x= i/(1-f)
x1= (y1-y2)/x
//RESULTS
printf (' Distance= %.f ft',x1)
