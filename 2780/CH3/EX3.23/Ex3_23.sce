clc
//to calculate dispersive power 
//differentiate grating equation ,we get dtheta/dlambda=n/((e+d)*costheta)
n=2 //order 
eplusd=1/4000
lambda=5000*10^-8 //wavelength in cm
sintheta=n*lambda/(eplusd)
costheta=sqrt(1-(sintheta)^2)
dtheta=n/((eplusd)*costheta)   //where dispersive power dtheta/dlambda=dtheta
disp("dispersive power of he grating in the second order spectrum is dtheta="+string(dtheta)+"unitless")
