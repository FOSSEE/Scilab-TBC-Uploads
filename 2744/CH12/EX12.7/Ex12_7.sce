clear;
clc;
l1 = 3;// feet
d1 = 1;// feet
l2 = 9;// feet
M = 200;// lb-wt
l = 9;// inches
N = 12*10^6;// lb/in^2
k = l2/l1;
T1 = M/(1+k);// lb-feet
T2 = k*T1;// lb-feet
f_s = T2*12/(%pi/16);// lb/in^2
theta = f_s*l/(0.5*d1*N);// radians
printf('T1 = %d lb-feet\n T2 = %d lb-feet',T1,T2);
printf('\n f_s = %d lb/in^2',f_s);
printf('\n theta = %.5f radian\n       = %.4f degrees',theta,theta*180/%pi);
//there is a minute error in the answer given in twxtbook
