//Chapter-1,Example1_2_9,pg 1-17

u=1.2                                  //refractive index of oil film

t=2*10^-7                              //thickness of oil film

r=60                           //angle of refraction

//for destructive interference    '2*u*t*cos(r) = (2*n-1)*wavelength/2'

wavelength_1=(2*u*t*cosd(r)*2/(2*1-1))*10^10               //for   n=1

wavelength_2=(2*u*t*cosd(r)*2/(2*2-1))*10^10               //for   n=2

wavelength_3=(2*u*t*cosd(r)*2/(2*3-1))*10^10               //for   n=3

//visible range of wavelengths is 4000*10^-10 m  to  7000*10^-10 m

printf('\n for n=1  wavelength = %.f A.\n',wavelength_1)

printf('\n for n=2  wavelength = %.f A.\n',wavelength_2)

printf('\n for n=3  wavelength = %.f A.\n',wavelength_3)

printf('\n The wavelength will be reflected is wavelength = %.f A.\n',wavelength_1)

