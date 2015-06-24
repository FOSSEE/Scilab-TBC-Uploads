clc 
// Given that
f = 50 // focal length of lens in cm
lambda = 5890 // Wavelength of light in angstrom
e = 0.03 // Width of slit in cm
m = 1 // Order for first dark band
n = 3/2 // Order for first bright band
// Sample Problem 9 on page no. 143
printf("\n # PROBLEM 9 # \n")
printf(" Standard formula used \n")
printf(" lambda = e*sin(theta)  \n")

theta_d = m*asin(lambda*1e-10/(e*1e-3)) // Calculation of angle in radian
theta_b = n*asin(lambda*1e-10/(e*1e-3)) // Calculation of angle in radian
y_d = theta_d*f*1e-2 // Calculation of linear distance of first dark band from center in m
y_b = theta_b*f*1e-2 // Calculation of linear distance of first dark band from center in m
printf("\n Linear distance of first dark band from center is %f cm \n Linear distance of next bright band  is %f cm",y_d*10,y_b*10)
