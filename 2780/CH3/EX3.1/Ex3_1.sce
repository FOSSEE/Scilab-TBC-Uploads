clc
//to calculate angular width and linear width 
lambda=6*10^-5
e=0.01 //width of slit in cm
//position of minima is given by
sintheta=lambda/e               //sintheta=m*lambda/e             ,where m=1,2,3,......
disp("sintheta="+string(sintheta)+" m")
//since theta is very small,so sintheta is approximately equal to theta
theta=sintheta
theta1=2*theta
disp("total angular width of central maximum is theta1="+string(theta1)+" m radians ")
d=100  //distance in cm
Y=theta*d
Y1=2*Y
disp("linear width of central maximum on the screen is Y1="+string(Y1)+" m cm")
disp("values of m =1,2,3,............ gives the directions of first, second .............minima")
