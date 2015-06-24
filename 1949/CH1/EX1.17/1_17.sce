//Chapter-1,Example 1_17,Page 1-43
clc()

//Given Data:
Dn=0.225*10^-2       //Diameter of nth ring
Dm=0.45*10^-2        //Diameter of (n+9)th ring
lam=6*10^-7          //wavelength of light
R=0.9                //Radius of curvature
p=9

//Calculations:
//(Dn+p)^2-Dn^2=4*p*lam*R/u
u=4*p*lam*R/((Dm)^2-Dn^2)    //Refractive index of liquid
printf('Refractive index of liquid is =%.2f \n',u)
