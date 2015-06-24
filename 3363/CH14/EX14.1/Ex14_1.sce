//Example 14.1, page 507
clc
disp('Part a')
k=1.4*10^-23//in J/K
Te=4.2//in K
eg=3*k*Te
printf("\n The gap energy is  %e  J",eg)
h=6.63*10^-34//in j-s
c=3*10^8//m/s
disp('Part b')
lambda=(h*c)/eg

printf("\n The wavelength is  %e  m",lambda)


