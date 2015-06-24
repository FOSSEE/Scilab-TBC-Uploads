clc
//to calculate separation of two points on the moon
lambda=5.5*10^-5 //wavelength of light in cm
a=500 //diameter in cm
dtheta=1.22*lambda/a //limit of resolution of telescope in radians
R=3.8*10^8 //distance between earth and moon in m
X=R*dtheta
disp("the separation of two points on the moon is X="+string(X)+"m")
