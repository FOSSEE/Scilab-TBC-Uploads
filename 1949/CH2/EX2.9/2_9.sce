//Chapter-2,Example 2_9,Page 2-34
clc()

//Given Data:
m=1                //order
lam=6*10^-7        //Wavelength of light
a=12*10^-7         //width of slit

//Calculations:

//We know, a*sin(theta)=m*lam
theta=asin(m*lam/a)*180/%pi    //angular position in first minima
printf('Half angular width of first maxima is = %.0f degrees',theta)
