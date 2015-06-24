//Chapter-1,Example 1_25,Page 1-47
clc()

//Given Data:
lam1=6*10^-7     //wavelength of light
lam2=4.5*10^-7   //wavelength of light
R=0.9            //Radius of curvature

//Calculations:
//As Dn^2=4*n*R*lam.
//Dn^2=D(n+1)^2 for different wavelengths.we get,
n=lam2/(lam1-lam2)    //nth dark ring due to lam1 which coincides with (n+1)th dark ring due lam2
D3=sqrt(4*n*R*lam1)   //diameter of 3rd dark ring for lam1
printf('Diameter of 3rd dark ring for lam1 is =%.5f m \n',D3)
