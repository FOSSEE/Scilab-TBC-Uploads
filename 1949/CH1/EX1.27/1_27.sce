//Chapter-1,Example 1_27,Page 1-49
clc()

//Given Data:
D5=0.336*10^-2       //Diameter of 5th ring
D15=0.59*10^-2       //Diameter of 15th ring
lam=5.89*10^-7       //wavelength of light
p=10                 //n=5,n+p=15

//Calculations:
//(Dn+p)^2-Dn^2=4*p*lam*R/u
R=((D15)^2-D5^2)/(4*p*lam)    //Radius of curvature of the lens
printf('Radius of curvature of the lens is =%.4f m \n',R)
