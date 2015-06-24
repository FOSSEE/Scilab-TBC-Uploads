//Chapter-1,Example 1_26,Page 1-48
clc()

//Given Data:
i=45*%pi/180        //angle of incidence
u=4/3               //Refractive index of soap film
lam=5*10^-7         //wavelength of light
t=1.5*10^-6         //thickness of film

//Calculations:
//u=sin i/sin r      //Snell's law   .So,
r=asin(sin(i)/u)     //angle of reflection

//Now, condition for dark band is
//2ut*cos r=n*lam
n=2*u*t*cos(r)/lam   //order of band
printf('order of dark band is =%.1f \n',n)
