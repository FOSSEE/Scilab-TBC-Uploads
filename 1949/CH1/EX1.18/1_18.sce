//Chapter-1,Example 1_18,Page 1-44
clc()

//Given Data:
D10=0.5*10^-2        //Diameter of 10th ring
lam=5.5*10^-7        //wavelength of light
u=1.25               //Refractive index of liquid


//Calculations:
//As Dn^2=4*n*R*lam/u
//Dn^2 is inversely proportional to refractive index.
D10n=D10/sqrt(u)          //new diameter of 10th ring after changing medium between lens and plate
printf('new diameter of 10th ring after changing medium between lens and plate is =%.6f m \n',D10n)
