clc
//to calculate difference in the two wavelengths
//grating equation for principal maxima is (e+d)*sintheta=n*lambda...............eq(1)
//differentiate both sides ,we get dtheta=n*dlambda/((e+d)*costheta)...........eq(2)
lambda=5000           //mean value of wavelengths in angstrom
cottheta=1.732       //cot30degree=1.732
dtheta=0.01 //in radian
//put the value of n from eq(2),we can write eq(2)  
dlambda=lambda*dtheta*cottheta
disp("difference in two wavelengths is dlambda="+string(dlambda)+"angstrom")
