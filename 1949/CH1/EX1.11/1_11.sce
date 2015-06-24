//Chapter-1,Example 1_11,Page 1-22
clc()

//Given Data:
i=asin(4/5)          //angle of incidence
u=4/3                //Refractive index of a soap film
lam1=6.1*10^-7       //wavelength of light
lam2=6*10^-7         //wavelength of light

//Calculations:
//u=sin i/sin r      //Snell's law   .So,
r=asin(sin(i)/u)     //angle of reflection

//Now, condition for dark band is
//2ut*cos r=n*lam
//for consecutive bands, n=lam2/(lam1-lam2). hence

t=lam2*lam1/((lam1-lam2)*2*u*sqrt(1-(sin(i)/u)^2))     //thickness of film
printf('Thickness of the film is =%.7f m',t)

