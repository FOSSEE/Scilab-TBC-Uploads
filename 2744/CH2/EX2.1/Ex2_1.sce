clear;
clc;
p_1 = 5;//principal stress in tons/in^2
p_2 = 5/2;//principal stress in tons/in^2
theta = 50*%pi/180;//angle in degrees
p_n = p_1*cos(theta)^2+p_2*sin(theta)^2;//normal stress intensity
p_t = (p_1-p_2)*sin(theta)*cos(theta);//tangential stress intensity
p = sqrt((p_1*cos(theta))^2+(p_2*sin(theta))^2);//resultant intensity of stress
alpha = atan((p_2*sin(theta))/(p_1*cos(theta)));//in radians
alpha = alpha*180/%pi;//in degrees
printf('Normal stress intensity p_n = %.2f tons/in^2',p_n);
printf('\n Tangential stress intensity p_t = %.2f tons/in^2',p_t);
printf('\n Resultant stress intensity p = %.2f tons/in^2',p);
printf('\n angle alpha p_n = %.2f degrees',alpha);

//there is an error in the answer given in text book
