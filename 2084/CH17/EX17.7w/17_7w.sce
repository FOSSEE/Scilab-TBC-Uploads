//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.7w
//calculation of the maximum and the minimum path difference at the detector 

//given data
lambda=600*10^-9//wavelength(in m) of the light 
d=1*10^-2*10^-2//distance(in m) between the sources

//calculation
pdmax=d//path diffrence maximum
pdmin=0//path diffrence minimum
//farthest minima occurs for path difference lambda/2
//sqrt(D^2 + d^2) - D = lambda/2
D=(d^2/lambda)-(lambda/4)//distance of the farthest minima

printf('the maximum path difference on moving the detector along S1P line is %3.1e cm',pdmax*10^2)
printf('\nthe minimum path difference on moving the detector along S1P line is %3.1f cm',pdmin*10^2)
printf('\nthe farthest minimum is located at a distance of %3.1f cm from the point S1',D*10^2)
