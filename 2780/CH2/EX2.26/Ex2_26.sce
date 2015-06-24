clc
//to calculate the distance from the apex of the wedge at which the maximum due to the two wavelengths first coincide
//condition for maxima for normal incidence air film is 2t=(2n+1)lambda/2
//let nth order maximum due to lambda1 coincides with (n+1)th order maximum due to lambda2 
//we get , n=(3lambda2-lambda1)/2(lambda1-lambda2)
// we also get, 2t=lambda1*lambda2/(lambda1-lambda2)
//t=X*theta
lambda1=5896*10^-8 //wavelength in cm
lambda2=5890*10^-8 //wavelength in cm
theta=0.3*%pi/180 //angle of wedge
X=lambda1*lambda2/(2*(lambda1-lambda2)*theta)
disp("the distance from the apex of the wedge is X="+string(X)+"cm")
