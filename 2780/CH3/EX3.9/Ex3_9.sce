clc
//to calculate distances of first dark band and of next bright band on either side of the central maximum
//formula is e*sintheta=m*lambda,where m=1
lambda=5890*10^-8     //wavelength of light in cm
e=0.03 //width of slit in cm
sintheta=lambda/e 
theta=sintheta //becoz theta is very small,so sintheta is approximately equal to theta
f=50
y=f*theta
disp("linear distance of first minimum from the central maximum is y="+string(y)+"cm")
sintheta1=3*lambda/(2*e)
theta1=sintheta1
y1=f*theta1
disp("linear distance of first secondary maxima is y1="+string(y1)+"cm")
