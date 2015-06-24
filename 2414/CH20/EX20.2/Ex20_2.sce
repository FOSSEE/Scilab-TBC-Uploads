clc;
close();
clear();
//page no 619
//prob no. 20.2
theta_i=30;    //degree
ni=1.00;       //incident refraction index
nr=1.52;       //refeacted ray refraction index
theta_r=asin(ni/nr*sin(theta_i*%pi/180));    //in radians
mprintf('angle of refraction is %.2f  degree',theta_r*180/%pi);
