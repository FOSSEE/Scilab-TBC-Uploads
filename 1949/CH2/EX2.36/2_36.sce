//Chapter-2,Example 2_36,Page 2-54
clc()

//Given Data:
n=1                 //order
lam=5.89*10^-7      //Wavelength of light
a=0.3*10^-3         //width of slit

//Calculations:

//We know, a*sin(theta)=n*lam
theta1=asin(n*lam/a)*180/%pi     //angular position in first dark band
printf('Angular position in first dark band is = %.3f degrees \n \n',theta1)

//We know,for bright band   a*sin(theta)=(2n+1)*lam/2
theta2=asin(1.5*lam/a)*180/%pi    //angular position in first bright band
printf(' Angular position in first bright band is = %.3f degrees',theta2)
