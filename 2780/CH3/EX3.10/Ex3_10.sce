clc
//to calculate wavelength of light and missing orders
omega=0.25  //fringe width in cm
D=170 //distance in cm
twod=0.04 // distance in cm
lambda=omega*twod/D
disp("wavelength of light is lambda="+string(lambda)+"cm")
e=0.08 //width of slit in mm
d=0.4 //in mm
m=1
n=m*(e+d)/e 
disp("missing order is n="+string(n)+"unitless")
//we can also find order for m=2,3,....
