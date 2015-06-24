//Chapter-1,Example1_4_7,pg 1-35

R=200                                                  //radius of curvature

wavelength_1=6000*10^-8                                     //wavelength of light for nth dark ring

wavelength_2=5000*10^-8                                     //wavelength of light for (n+1)th dark ring

//as nth ring due to wavelength_1= 6000*10^-8 cm   is coincide with (n+1)th ring  due to wavelength_2=5000*10^-8 cm

//therefore  6*n = 5*(n+1)

n=5

Dn=sqrt(4*R*n*wavelength_1)

printf('\nDiameter of nth dark ring due to wavelength 6000 A. is   Dn = %.4f cm\n',Dn)

//wrong ans in textbook
