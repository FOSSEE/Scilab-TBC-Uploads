clc
//initialisation of variables
u1= 0.5 //ft^3/sec
b= 5 //ft
w= 4 //ft
g= 32.2//ft/sec^2
//CALCULATIONS
u= u1*12*12/(b*w)
s= sqrt(g*w/12)
F= u/s
r= 0.5*(sqrt(1+8*F^2)-1)
y= r*w
yc= (((w*y*(y+w)))/2)^(1/3)
//CALCULATIONS
printf (' critical depth= %.2f in',yc)
