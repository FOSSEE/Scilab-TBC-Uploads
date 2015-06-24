clc
//to calculate distance of the third bright fringe on the screen from the central maximum 
lambda=6.5*10^-5 //wavelength in cm
twod=0.2 //distance between the slits in cm
D=120 //distance between the plane of the slits and the screen in cm
n=3 
X3=D*n*lambda/twod
disp("the distance of the third bright fringe from the central maximum is X3="+string(X3)+"cm")
//to calculate the least distance from the central maximum 
lambda1=6.5*10^-5 //wavelength in cm
lambda2=5.2*10^-5 //wavelength in cm
//Xn=Dnlambda1/2d=D(n+1)lambda2/2d
//we get,
n=lambda2/(lambda1-lambda2)
disp("n="+string(n)+"unitless")
Xn=D*n*lambda1/twod
disp("the distance from the central maximum when the bright fringes due to both wavelengths coincide is Xn="+string(Xn)+"cm")
 
