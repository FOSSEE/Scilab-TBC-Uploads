// Initilization of variables
// The given section is Z-section which is un-symmetrycal about both the axis
b1=20 //cm // width of bottom flange 
t1=5 //cm // thickness of the bottom flange
b2=2.5 //cm // thickness of the web of the flange
t2=15 //cm // depth of the web
b3=10 //cm // width of the top flange
t3=2.5 //cm // thickness of the top flange
// Calculations
// Respective areas
A1=b1*t1 // cm^2 // area of the bottom flange
A2=b2*t2 // cm^2 // area of the web
A3=b3*t3 // cm^2 // area of the top-flange
// first we calculate the x co-ordinate of the centroid
x1=b3-b2+(b1/2) //cm // for the bottom flange
x2=b3-(b2/2) //cm // for the web
x3=b3/2 //cm // for the top flange
x_c=((A1*x1)+(A2*x2)+(A3*x3))/(A1+A2+A3) //cm
// secondly we calculate the y co-ordinate of the centroid
y1=t1/2 //cm // for the bottom flange
y2=t1+(t2/2) //cm // for the web
y3=t1+t2+(t3/2) //cm // for the top flange
y_c=((A1*y1)+(A2*y2)+(A3*y3))/(A1+A2+A3) // cm
// Results
clc
printf('The centroid of the cross-sectional area of a Z-section about x-axis is %f cm \n',x_c)
printf('The centroid of the cross-sectional area of a Z-section about y-axis is %f cm \n',y_c)
