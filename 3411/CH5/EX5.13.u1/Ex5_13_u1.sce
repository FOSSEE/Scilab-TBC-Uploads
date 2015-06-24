//Example 5_13_u1
clc();
clear;
//To determine the crystal structure and indices of plane and lattice parameter of the material
theta1=20.7
peak1=sin((theta1/2)*%pi/180)^2/0.0308
printf("Indices of the plane corresponding to peak 1 is %d\n",peak1)
theta2=28.72
peak2=sin((theta2/2)*%pi/180)^2/0.0308
printf("Indices of the plane corresponding to peak 2 is %.1f\n",peak2)
theta3=35.36
peak3=sin((theta3/2)*%pi/180)^2/0.0308
printf("Indices of the plane corresponding to peak 3 is %.1f\n",peak3)
theta4=41.07
peak4=sin((theta4/2)*%pi/180)^2/0.0308
printf("Indices of the plane corresponding to peak 4 is %.1f\n",peak4)
theta5=46.19
peak5=sin((theta5/2)*%pi/180)^2/0.0308
printf("Indices of the plane corresponding to peak 5 is %.1f\n",peak5)
theta6=50.9
peak6=sin((theta6/2)*%pi/180)^2/0.0308
printf("Indices of the plane corresponding to peak 6 is %.1f\n",peak6)
theta7=55.28
peak7=sin((theta7/2)*%pi/180)^2/0.0308
printf("Indices of the plane corresponding to peak 7 is %.1f\n",peak7)
theta8=59.42
peak8=sin((theta8/2)*%pi/180)^2/0.0308
printf("Indices of the plane corresponding to peak 8 is %.1f\n",peak8)
printf("The material corresonds to bcc structure\n") 
lamda=0.07107       //units in nm
theta=29.71         //units in degrees
d400=lamda/(2*sin(theta*(%pi/180)))         //units in nm
hkl=16
a=d400*sqrt(hkl)         //units in nm
printf("Lattice parameter of the material a=%.4fnm",a)
