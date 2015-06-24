clc
//to calculate width of slit
//direction of minima in fraunhofer diffraction due to single slit is given by %pi/lambda*e*siuntheta=+m*%pi,where m=1,2,3
//angular spread of the central maximum on either side of the incident light is sintheta=lambda/e,where m=1,position of first minima
lambda=5000*10^-8
e=lambda/sin(%pi/6)
disp("width of slit is e="+string(e)+"cm")
