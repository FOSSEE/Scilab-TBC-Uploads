clear all; clc;

disp("Scilab Code Ex 6.19 : ")

//Given:
theta = 30*(%pi/180);
M = 15; //kNm
My = M*cos(theta); 
Mz = M*sin(theta); 
b = 0.1; //m
t1 = 0.04;//m
t2 = 0.03;//m


//Section Properties:
y1 = b/2;
y2 = b + t2/2;
A1 = (b*t1);
A2 = (b*2*t2);
z_bar = (y1*A1 + y2*A2)/(A1+A2);

Iz = (1/12)*(b*t1^3) + (1/12)*(t2*(2*b)^3);
Iy = (1/12)*(t1*b^3) + b*t1*(z_bar - y1)^2 + (1/12)*(2*b*t2^3) + 2*b*t2*(y2 - z_bar)^2;

//Maximum Bending Stress:
l_b = b+t2 - z_bar;
sigma_B = (-Mz*1000*(-b))/Iz + (My*1000*(l_b))/Iy;
sigma_B = sigma_B/10^6;
sigma_C = (-Mz*1000*(t1/2))/Iz + (My*1000*(-z_bar))/Iy;
sigma_C = sigma_C/10^6;

sigma = max(abs(sigma_B),abs(sigma_C));

//Orientation of the nuetral axis:
theta1 = 60*(%pi/180);
alpha = atan((Iz/Iy)*tan(theta1));
alpha = alpha*(180/%pi);

//Display:

    
 printf("\n\nThe maximum normal stress in the beam = %1.2f MPa',sigma);
 printf("\n The orientation of the nuetral axis = %1.1f degrees',alpha);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------



