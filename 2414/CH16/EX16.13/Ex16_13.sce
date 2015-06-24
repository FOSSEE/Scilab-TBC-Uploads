clc;
close();
clear();
//page no 535
//prob no. 16.13
n1=1;    //refraction index of air
E2=4     //material dielectric constant
theta_i=50   //angle of incidence in degree  (misprinted in the solution)
n2=sqrt(E2);
theta_r=asin(n1/n2*sin(theta_i*%pi/180));
mprintf(' The angle of refraction is %.2f \n (using angle of incidence =50)\n',theta_r*180/%pi);
//misprinted angle 
