clc;
close();
clear();
//page no 620
//prob no. 20.3
theta_r=90;    //degree
ni=1.52;       //refraction index for crown glass
nr=1.00;       //refraction index for air
theta_i=asin(nr/ni*sin(theta_r*%pi/180));    //in radians
mprintf('critical angle is %.2f  degree',theta_i*180/%pi);
//misprinted theta_r in the text
//values are raunded up in the text
