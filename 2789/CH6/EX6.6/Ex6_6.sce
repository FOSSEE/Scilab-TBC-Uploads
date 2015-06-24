clear;
clc;
funcprot(0);

//page no. 188

p1 = 14.7;// psia
v1 = 1732;// fps
a1 = 862;// fps
beta = 40;// degrees


M1 = v1/a1;
T1 = a1^2 /(1.4*32.2*53.3);
p2 = p1*(1 + 2*(1.4/2.4)*(M1^2 *(sin(beta*%pi/180))^2 -1));
theta = beta - (180/%pi)*atan(tan(beta*%pi/180) * (0.4*(M1*sin(beta*%pi/180))^2 +2)/(2.4*(M1*sin(beta*%pi/180))^2));
M2 = sqrt((1/sin((beta-theta)*%pi/180))^2 *(1 + (0.4/2)*((M1*sin(beta*%pi/180))^2) )/(1.4*(M1*sin(beta*%pi/180))^2) -(0.4/2));
v2 = v1*cos(beta*%pi/180)/cos((beta-theta)*%pi/180);
a2 = v2/M2;
T2 = a2^2 /(1.4*32.2*53.3);


printf('Angle required = %.1f degrees,\n p2 = %.1f psia,\n v2 = %d fps,\n a2 = %d fps,\n T2 = %.1f degreeR',theta,p2,v2,a2,T2);

//there are errors in the answer given in textbook
