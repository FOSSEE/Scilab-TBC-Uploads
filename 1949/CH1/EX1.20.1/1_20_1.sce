//Chapter-1,Example 1_20_1,Page 1-52
clc()

//Given Data:
i=45*%pi/180         //angle of incidence
u=1.2                //Refractive index of a film
t=4*10^-7            //thickness of film

//Calculations:
//u=sin i/sin r      //Snell's law   .So,
r=asin(sin(i)/u)     //angle of reflection

//Now, condition for dark fringe is
//2ut*cos r=n*lam
lam1=2*u*t*cos(r)/1          //n=1
printf('For n=1 wavelength is =%.10f m \n',lam1)
printf(' This is in the visible spectrum and it will remain absent.\n \n') 

lam2=2*u*t*cos(r)/2          //n=2
printf(' For n=2 wavelength is =%.10f m \n',lam2)
printf(' This is not in the visible spectrum \n \n')
