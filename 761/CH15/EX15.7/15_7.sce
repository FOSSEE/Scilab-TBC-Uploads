clc;
//page no 530
//prob no. 15.7
//A radio wave moves from air(er=1) to glass(er=7.8).angle of incidence=30 deg
theta_i=30;er1=1;er2=7.8;
//determination of angle of refraction
theta_r=asind((sind(theta_i))/(sqrt(er2/er1)));
disp('degree',theta_r,'The angle of refraction is');