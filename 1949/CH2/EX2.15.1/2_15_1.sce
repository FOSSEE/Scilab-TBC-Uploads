//Chapter-2,Example 2_15_1,Page 2-54
clc()

//Given Data:
a=0.2*10^-3          //width of slit
n=1                  //order
y=0.5*10^-2          //separation between first minima and central bright band
D=2                  //distance between screen and slit

//Calculations:

theta=y/D            //from diagram 

//We know, a*sin(theta)=n*lam
//here sin(theta)=theta
lam=a*theta/n        //wavelength of light
printf('wavelength of light is = %.10f m \n',lam)
