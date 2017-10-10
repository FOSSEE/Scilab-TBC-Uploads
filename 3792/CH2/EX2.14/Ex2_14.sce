// Example 2_14
clc;funcprot(0);
// Given data
v_A=45;// mi/hr
v_B=30;// mi/hr
a_A=3;// ft/sec^2
theta_1=30;// degree
theta_2=60;// degree
rho=440;// The radius of curvature in ft

// Calculation
// Velocity
v_A=v_A*(5280/3600);// ft/sec
v_B=v_B*(5280/3600);// ft/sec
// By the application of the law of cosines and the law of sines gives
v_BA=sqrt(v_A^2+v_B^2-(2*v_A*v_B*cosd(theta_2)));// ft/sec
theta=asind((v_B*sind(theta_2))/v_BA);// degree
// Acceleration
a_B=(v_B)^2/rho;// ft/sec^2
a_BAx=a_B*cosd(theta_1)-a_A;// ft/sec^2
a_BAy=a_B*sind(theta_1);// ft/sec^2
a_BA=sqrt(a_BAx^2+a_BAy^2);// ft/sec^2
beta=asind((a_B*sind(theta_1))/a_BA);// degree
printf("\nv_BA=%2.1f ft/sec \ntheta=%2.1f degree \na_AB=%1.2f ft/sec^2 \nbeta=%2.1f degree",v_BA,theta,a_BA,beta);
