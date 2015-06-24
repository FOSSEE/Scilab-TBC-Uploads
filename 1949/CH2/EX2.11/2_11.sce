//Chapter-2,Example 2_11,Page 2-35
clc()

//Given Data:
a=0.14*10^-3         //width of slit
n=2                  //order
y=1.6*10^-2          //separation between second dark band and central bright band
D=2                  //distance between screen and slit

//Calculations:

theta=y/D            //from diagram 

//We know, a*sin(theta)=n*lam
//here sin(theta)=theta
lam=a*theta/n        //wavelength of light
printf('wavelength of light is = %.10f m \n',lam)
