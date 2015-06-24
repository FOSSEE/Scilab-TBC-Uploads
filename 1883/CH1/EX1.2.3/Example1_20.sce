//Chapter-1,Example1_2_3,pg 1-12

u=4/3                                      //refractive index of soap film

t=1.5*10^-4                                //thickness of soap film 

wavelength=5*10^-5                                //wavelength of light 

i=45                               //angle of incidece

r=asind(sind(i)/u)                           //by Snell's law

n=2*u*t*cosd(r)/wavelength                         //for nth dark band

printf("\n the order of an interference band is n = %.0f",n)
