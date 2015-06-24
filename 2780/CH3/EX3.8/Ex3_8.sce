clc
//to calculate angle
lambda=6000*10^-8      //wavelength of light in cm
e=0.03       //width of slit in cm
//e*sintheta=m*lambda,where m=1
theta=asind(lambda/e) 
disp("angle at which the first dark band are formed in the fraunhofer diffraction pattern is theta="+string(theta)+"degree")
theta1=asind(3*lambda/(2*e))
disp("angle at which the next bright band are formed in the fraunhofer diffraction pattern is theta1="+string(theta1)+"degree")
