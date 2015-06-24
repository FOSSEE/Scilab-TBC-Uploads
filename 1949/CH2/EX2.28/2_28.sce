//Chapter-2,Example 2_28,Page 2-49
clc()

//Given Data:
n=1                 //order
lam=5.89*10^-7      //Wavelength of light
a=0.3*10^-3         //width of slit

//Calculations:

//We know, a*sin(theta)=n*lam
theta1=asin(n*lam/a)*180/%pi*60     //angular position in first dark band in minutes
printf('Angular position in first dark band is = %.1f minutes \n \n',theta1)

//We know,for bright band   a*sin(theta)=(2n+1)*lam/2
theta2=asin(1.5*lam/a)*180/%pi*60    //angular position in first bright band in minutes
printf(' Angular position in first bright band is = %.0f minutes',theta2)
