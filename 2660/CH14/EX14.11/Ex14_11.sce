clc
cs = 20 // side cutting edge angle in degree
ce = 30 // end cutting edge angle in degree
f = 0.1 // feed in mm/rev.
r = 3 // nose radius in mm
cs2 = cs*%pi/180 // side cutting edge angle in radians
ce2 = ce*%pi/180 // end cutting edge angle in radians
h = (1-cos(ce2))*r + f*sin(ce2)*cos(ce2) - sqrt((2*f*r*(sin(ce2))^3)-((f^2)*(sin(ce2))^4))
Ra = h/4 // Centre line average roughness in mm
printf("\n Centre line average roughness = %0.2f*10^-6m" , Ra*10^3)
// 'Answers vary due to round off error'
