clear;
clc;
q = 2;//tons/in^2
p = 5;//tons/in^2
p_dash = 2;//tons/in^2
theta = 0.5*atan(2*q/(p-p_dash));//radians
theta1 = theta*180/%pi;//degrees
theta2 = theta1+90;//degrees
p_1 = 0.5*(p+p_dash)+sqrt(q^2 + 0.25*(p-p_dash)^2);//tons/in^2
p_2 = 0.5*(p+p_dash)-sqrt(q^2 + 0.25*(p-p_dash)^2);//tons/in^2
q_max = 0.5*(p_1-p_2);//tons/in^2
printf('The principal stresses are p_1 = %d tons/in^2 .,tensile\n  p_2 = %d tons/in^2., tensile',p_1,p_2);
printf('\n The maximum shear stress is %.1f tons/in^2., the planes offering it being inclined at %.2f degrees and %.2f degrees \n to the plane having the normal stress intensity of %d tons/in^2.',q_max,theta1+45,theta2+45,p);
//there is an error in the answer given in text book
