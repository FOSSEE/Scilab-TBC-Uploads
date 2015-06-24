//Chapter-2,Example 2_15_2,Page 2-55
clc()

//Given Data:
lam1=5.4*10^-7               //Wavelength of light
lam2=4.05*10^-7              //Wavelength of light
theta=30*%pi/180             //angle of diffraction

//Calculations:
//We know, (a+b)*sin(theta)=n*lam
//n*lam1=(n+1)*lam2, we get 
n=3
N=sin(theta)/(n*lam1)*10^-2      //Number of lines per m= 1/(a+b)*10^-2
printf('Number of lines per cm is = %.0f \n',N)
