//Chapter-1,Example 1_15,Page 1-42
clc()

//Given Data:
n=6              //6th bright ring
D6=0.31*10^-2    //Diameter of 6th ring
lam=6*10^-7      //wavelength of light
R=1              //Radius of curvature

//Calculations:

//Diameter of nth bright ring is 
//Dn^2=2(2n-1)*lam*R/u. Hence
u=2*(2*n-1)*lam*R/(D6)^2    //Refractive index of liquid
printf('Refractive index of liquid is =%.3f \n',u)
