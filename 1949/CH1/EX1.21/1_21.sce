//Chapter-1,Example 1_21,Page 1-45
clc()

//Given Data:
u=1.33                 //Refractive index of a soap film
r=0                    //normal incidence
t=5*10^-7              //thickness of film

//Calculations:

//Now, condition for maxima is
//2ut*cos r=(2n-1)lam/2
lam1=4*u*t*cos(r)/(2*1-1)          //n=1
printf('For n=1 wavelength is =%.10f m \n',lam1)
lam2=4*u*t*cos(r)/(2*2-1)          //n=2
printf(' For n=2 wavelength is =%.10f m \n',lam2)
lam3=4*u*t*cos(r)/(2*3-1)          //n=3
printf(' For n=3 wavelength is =%.10f m \n',lam3)
lam4=4*u*t*cos(r)/(2*4-1)          //n=4
printf(' For n=4 wavelength is =%.10f m \n \n',lam4)

printf(' Out of these wavelengths wavelength for n=3 lies in the visible spectrum. \n \n')
printf(' Hence, wavelength for n=3 is the most reflected wavelength.')
