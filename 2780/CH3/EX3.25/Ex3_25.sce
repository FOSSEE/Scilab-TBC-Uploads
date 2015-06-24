clc
//to calculate difference in wavelengths of two lines
//let E=(e+d)=1/5000
//we get
E=2*10^-4 //in cm
n=2 //order of spectrum
lambda=5893*10^-8 //wavelength in cm
//dtheta=2.5'=(2.5/60)*(3.14/180),we get
dtheta=7.27*10^-4 //in radian
dlambda=sqrt(((E/n)^2)-lambda^2)*dtheta
disp("the difference in wavelengths of two lines is dlambda="+string(dlambda)+"cm") 
