//Chapter-1,Example1_2_8,pg 1-16

V=0.2                             //volume of oil

A=10^4                             //area

t=V/A                              //Thickness of oil film

r=0                                //for normal incidence

n=1                                //for 1st dark band

wavelength=5.5*10^-5                      //wavelength of light 

u=n*wavelength/(2*t*cosd(r))

printf('\nrefractive index of oil is  u = %.3f',u)
