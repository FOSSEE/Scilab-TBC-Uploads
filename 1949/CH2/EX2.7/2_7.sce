//Chapter-2,Example 2_7,Page 2-33
clc()

//Given Data:
GE=2.54/15000*10^-2     //GE=(a+b) grating element
lam1=4*10^-7            //Wavelength of light
lam2=7*10^-7            //Wavelength of light

//Calculations:

//We know, (a+b)*sin(theta)=m*lam
theta11=asin(1*lam1/GE)*180/%pi       //angular position of first minima for lam1
theta12=asin(2*lam1/GE)*180/%pi       //angular position of second minima for lam1
theta13=asin(3*lam1/GE)*180/%pi       //angular position of third minima for lam1

theta21=asin(1*lam2/GE)*180/%pi       //angular position of first minima for lam2
theta22=asin(2*lam2/GE)*180/%pi       //angular position of second minima for lam2
theta23=asin(3*lam2/GE)*180/%pi       //angular position of third minima for lam2

printf('Thus the angular position for lam1 and lam2 are as follows: \n \n ')
printf('First order: %.0f degrees',theta11)
printf(' %.0f degrees --Isolated \n',theta21)

printf(' Second order: %.0f degrees',theta12)
printf(' %.0f degrees --Overlap \n',theta22)

printf(' Third order: %.0f degrees',theta13)
printf(' %.0f degrees --Overlap \n',theta23)

