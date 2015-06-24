clear;
clc;
funcprot(0);
//page no. 184

y1 = 2;//ft
V1 = 20;//fps
beta = 40;//degrees

K1 = (V1^2)/(32.2*y1);
y2 = (-1 + sqrt(1+8*K1*(sin(beta*%pi/180))^2));
k = (y1/y2)*V1*sin(beta*%pi/180);
del_angle = (180/%pi)*atan(sqrt((tan(beta*%pi/180)) *(1+2*k^2 /(32.2*y2))/(1+2*K1*(sin(beta*%pi/180))^2)));
theta = beta-del_angle;

printf('The required wedge angle = %d degrees',2*theta);
    
//there is an error in the answer given in textbook
