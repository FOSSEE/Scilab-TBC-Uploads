//Chapter-1,Example1_2_7,pg 1-15

u=1.5                                //refractive index of thin film

r1=60                         //angle of refraction

wavelength=5890*10^-8                      //wavelength of light

n=1                                  //for minimum thickness

t1=n*wavelength/(2*u*cosd(r1))

printf("\n the thickness of an oil film is t =%.7f cm",t1)

r2=0                                 //for normal incidence 

t2=n*wavelength/(2*u*cosd(r2))

printf("\n the thickness of an oil film is t =%.7f cm",t2)
