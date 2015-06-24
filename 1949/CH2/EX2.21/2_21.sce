//Chapter-2,Example 2_21,Page 2-41
clc()

//Given Data:
GE=18000*10^-10         //GE=(a+b) grating element
lam=5*10^-7             //Wavelength of red light

//Calculations:
DP1=1/sqrt(GE^2-lam^2)*10^-10        //Dispersive power
printf('Dispersive power for first order is = %.10f rad/Angstrom  \n \n',DP1)

m=3
DP2=1/sqrt((GE/m)^2-lam^2)*10^-10    //Dispersive power
printf(' Dispersive power for second order is = %.10f rad/Angstrom  \n \n',DP2)
