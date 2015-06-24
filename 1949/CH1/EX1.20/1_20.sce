//Chapter-1,Example 1_20,Page 1-45
clc()

//Given Data:
n=10             //10th dark ring
D10=0.6*10^-2    //Diameter of ring
lam=6*10^-7      //wavelength of light
u=4/3            //Refractive index of water


//Calculations:
//As Dn^2=4*n*R*lam/u
R=D10^2*u/(4*n*lam)    //Radius of curvature of the lens
printf('Radius of curvature of the lens is =%.1f m \n',R)
