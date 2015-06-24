//Chapter-2,Example 2_20,Page 2-40
clc()

//Given Data:
n=5                //order
lam=6*10^-7        //Wavelength of light

//Calculations:
//We know, a*sin(theta)=n*lam
//n*lam=n1*lam1
lam1=n*lam/4        //for n1=4
printf('For n1=4 wavelength is = %.10f \n',lam1)

lam2=n*lam/5        //for n1=5
printf(' For n1=5 wavelength is = %.10f \n',lam2)

lam3=n*lam/6        //for n1=6
printf(' For n1=6 wavelength is = %.10f \n',lam3)

lam4=n*lam/7        //for n1=7
printf(' For n1=7 wavelength is = %.10f \n',lam4)

lam5=n*lam/8        //for n1=8
printf(' For n1=8 wavelength is = %.10f \n',lam5)

printf('So,in the grating spectrum spectrum lines with wavelengths n1=6 and n1=7 will coincide with fifth order line of 6*10^-7 m')
