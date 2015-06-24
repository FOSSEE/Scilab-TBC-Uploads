// Initilization of variables
b1=20 //cm // width of top flange
t1=5 //cm // thickness of top flange
b2=5 //cm // width of web
t2=15 //cm // thickness or height of the web
b3=30 //cm // width of bottom flange
t3=5 //cm // thickness of bottom flange
// Calculations
A1=b1*t1 //cm^2 // area of bottom flange
A2=b2*t2 //cm^2 // area of the web
A3=b3*t3 //cm^2 // area of top flange
y1=t3+t2+(t1/2) //cm // y co-ordinate of the centroid of top flange
y2=t3+(t2/2) //cm //  y co-ordinate of the centroid of the web
y3=t3/2 //cm //  y co-ordinate of the centroid of the bottom flange
y_c=((A1*y1)+(A2*y2)+(A3*y3))/(A1+A2+A3) //cm // where y_c is the centroid of the un-symmetrycal I-section
// Results
clc
printf('The centroid of the un equal I-section is %f cm \n',y_c)
