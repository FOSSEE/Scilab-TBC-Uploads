//Chapter-2,Example 2_14,Page 2-37
clc()

//Given Data:
lam1=6*10^-7         //wavelength of yellow light
lam2=4.8*10^-7       //wavelength of blue light
theta=asin(3/4)      //angle of diffraction

//Calculations:

//for consecutive bands, n*lam1=(n+1)*lam2. thus,
n=lam2/(lam1-lam2)   //order

//We know, (a+b)*sin(theta)=m*lam
N=n*lam1/sin(theta)   //N=(a+b) grating element
printf('Grating element (a+b) is = %.8f m \n',N)
