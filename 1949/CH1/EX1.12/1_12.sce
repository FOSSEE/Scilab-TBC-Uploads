//Chapter-1,Example 1_12,Page 1-40
clc()

//Given Data:
n=10             //10th dark ring
Dn=0.5*10^-2     //Diameter of ring
lam=6*10^-7      //wavelength of light

//Calculations:
//As Dn^2=4*n*R*lam
R=Dn^2/(4*n*lam)    //Radius of curvature of the lens
printf('Radius of curvature of the lens is =%.2f m \n \n',R)

t=Dn^2/(8*R)        //thickness of air  film
printf(' Thickness of air  film is =%.7f m \n',t)
