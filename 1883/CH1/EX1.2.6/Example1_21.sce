//Chapter-1,Example1_2_6,pg 1-15

n=8                               

wavelength=5890*10^-8                      //wavelength of light 

u=1.46                               //refractive index of oil

i=30                         //angle of incidence

r=asind(sind(i)/u)                     //by Snell's law

t=n*wavelength/(2*u*cosd(r))

printf("\n the thickness of an oil film is t =%.7f cm",t)
