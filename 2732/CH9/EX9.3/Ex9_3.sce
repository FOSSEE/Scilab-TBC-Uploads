clc
//initialization of variables
clear
b=14 //cm
d=20 //cm
rx=8.46 //cm
ry=2.99 //cm
// calculations
ex=2*rx^2/d
ey=2*ry^2/b
h=2*ex
w=2*ey
// results
printf('for steel height=%.3f cm and width=%.3f cm',h,w)
// ISHB 225
b=22.5 //cm
d=22.5 //cm
rx=9.8 //cm
ry=4.96 //cm
// calculations
ex=2*rx^2/d
ey=2*ry^2/b
h=2*ex
w=2*ey
// results
printf('\n for an ISHB height=%.3f cm and width=%.3f cm',h,w)
