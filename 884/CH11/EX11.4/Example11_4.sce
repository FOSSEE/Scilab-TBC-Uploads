//diffraction

clear;
clc;

printf("\t Example 11.4\n");

n=1;
lambda=154;//wavelength, pm
theta=19.3;//angle of reflection, degree
d=n*lambda/(2*sin(theta*%pi/180));//spacing between the planes

printf("\t the spacing between planes is : %4.0f pm\n",d);

//End
