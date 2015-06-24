//Chapter-2,Example 2_27,Page 2-49
clc()

//Given Data:
m=2                           //order
lam1=5.77*10^-7               //Wavelength of light
lam2=5.791*10^-7              //Wavelength of light
GE=1/6000*10^-2               //GE=(a+b) grating element

//Calculations:

//We know, (a+b)*sin(theta)=m*lam
theta1=asin(m*lam1/GE)*180/%pi      //angular position in first minima
theta2=asin(m*lam2/GE)*180/%pi      //angular position in second minima

as=(theta2-theta1)*60         //Angular separation in minutes
printf('Angular separation is = %.0f minutes \n \n',as)
