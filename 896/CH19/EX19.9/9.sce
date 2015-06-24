clc
//Example 19.9
//Calculate the SO2 concentration at the centerline
Q=20//gm/s
u=3//m/s
sigma_y=30//m
sigma_z=20//m
y=60//m
z=20//m
H=0//m
c=Q/(2*%pi*u*sigma_y*sigma_z)*exp(-((y^2/2/sigma_y^2)+((z-H)^2/2/sigma_z^2)))//gm/m^3
printf("the SO2 concentration at the centerline is %f gm/m^3",c);