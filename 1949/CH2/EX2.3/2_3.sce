//Chapter-2,Example 2_3,Page 2-31
clc()

//Given Data:
m=1                //order
lam=4*10^-7        //Wavelength of light
a=10^-6            //width of slit

//Calculations:

//We know, a*sin(theta)=m*lam
theta=asin(m*lam/a)*180/%pi    //angular position in first minima
printf('angular position in first minima is = %.2f degrees',theta)
