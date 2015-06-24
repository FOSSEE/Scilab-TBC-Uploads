clc();
clear;
//Given :
V1 = 250; // potential in V
V2 = 500;// potential in V
theta1 = 45;// angle in degrees
//Law of electron refraction = sin(theta1)/sin(theta2)  = (V2/V1)^0.5
theta2 = asind(((V1/V2)^(1/2))*sind(45));
printf("theta2 = %d degrees",theta2);
