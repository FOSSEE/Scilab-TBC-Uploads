//Chapter-2,Example 2_5,Page 2-31
clc()

//Given Data:
m=1                   //order
lam=6.56*10^-7        //Wavelength of red light
theta=18.25*%pi/180   //angle of diffraction
W=2*10^-2             //width of grating

//Calculations:

//We know, (a+b)*sin(theta)=m*lam
N=sin(theta)/(m*lam)    //N-number of lines per m, N=1/(a+b)
Tn=N*W                  //Total number of lines on grating
printf('Total number of lines on grating is = %.0f ',Tn)
