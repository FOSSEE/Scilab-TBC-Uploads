//Chapter 27
clc
//Example 6
//given
d=0.314 //spacing between certain planes in a crystal of calcite in nm
l=0.070 //wavelength of X-rays in nm
m=1// first order of interference
theta1=asind((m*l)/(2*d))
disp(theta1,"Grazing angle at first order of interference in degree is")
m=3 //third order of interference
theta2=asind((m*l)/(2*d))
disp(theta2,"Grazing angle at third order of interference in degree is")


