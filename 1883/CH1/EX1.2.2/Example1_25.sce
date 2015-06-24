//Chapter-1,Example1_2_2,pg 1-12

u=1.33                                   //refractive index of soap film

t=5*10^-5                                //thickness of soap film

//for normal incidence 

r=0                                      //angle of refraction

//for constructive interference        '2*u*t*cos(r) = (2*n-1)*wavelength/2'

wavelength_1=(2*u*t*cos(r)*2/(2*1-1))*10^8               //for   n=1

wavelength_2=(2*u*t*cos(r)*2/(2*2-1))*10^8               //for   n=2

wavelength_3=(2*u*t*cos(r)*2/(2*3-1))*10^8               //for   n=3

wavelength_4=(2*u*t*cos(r)*2/(2*4-1))*10^8               //for   n=4

//visible range of wavelengths is 4000 A.  to  7000 A.

printf('\n for n=1  wavelength = %.1f A.\n',wavelength_1)

printf('\n for n=2  wavelength = %.1f A.\n',wavelength_2)

printf('\n for n=3  wavelength = %.1f A.\n',wavelength_3)

printf('\n for n=4  wavelength = %.1f A.\n',wavelength_4)

printf('\n The wavelength will be reflected is wavelength = %.1f A.\n',wavelength_3)
