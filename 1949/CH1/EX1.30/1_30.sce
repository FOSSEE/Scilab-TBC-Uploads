//Chapter-1,Example 1_30,Page 1-51
clc()

//Given Data:
D5=0.336*10^-2       //Diameter of 5th ring
D15=0.59*10^-2       //Diameter of 15th ring
p=10                 //n=5,n+p=15
R=1                  //Radius of curvature

//Calculations:
//(Dn+p)^2-Dn^2=4*p*lam*R/u
lam=((D15)^2-D5^2)/(4*p*R)    //Wavelength of light
printf('Wavelength of light is =%.10f m',lam)
