//Example 5_7
clc();
clear;
//To find the wavelength whenthese planes give rise to maximum density in reflection
d=275    //units in pm
theta=45        //units in degrees
//For n=1
n=1
lamda=(2*d*sin(theta*(%pi/180)))/n       //units in pm
printf("Wavelength for n=1 is lamda=%.1fpm\n",lamda)
//For n=2
n=2
lamda=(2*d*sin(theta*(%pi/180)))/n       //units in pm
printf("Wavelength for n=1 is lamda=%.1fpm\n",lamda)
//For n=3
n=3
lamda=(2*d*sin(theta*(%pi/180)))/n       //units in pm
printf("Wavelength for n=1 is lamda=%.1fpm\n",lamda)
//For n=4
n=4
lamda=(2*d*sin(theta*(%pi/180)))/n       //units in pm
printf("Wavelength for n=1 is lamda=%.1fpm\n",lamda)
//For n=5
n=5
lamda=(2*d*sin(theta*(%pi/180)))/n       //units in pm
printf("Wavelength for n=1 is lamda=%.1fpm\n",lamda)
printf("For n=1,2,3 and >5 lamda lies beyond the range of wavelengths of polychromatic source")
