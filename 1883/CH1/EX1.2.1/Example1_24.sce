//Chapter-1,Example1_2_1,pg 1-11

i=45                                 //angle of incidence

u=1.2                                        //refractive index of soap film

t=4*10^-5                                    //thickness of soap film

r=asind(sind(i)/u)                             //by  Snell's law

//for dark band   '2*u*t*cos(r) = n*lam'

wavelength_1=(2*u*t*cosd(r)/1)*10^8                          //for n=1

wavelength_2=(2*u*t*cosd(r)/2)*10^8                          //for n=2

wavelength_3=(2*u*t*cosd(r)/3)*10^8                          //for n=3

//visible range of wavelengths is 4000 A.  to  7000 A.

printf('\n for n=1  wavelength = %.1f A.\n',wavelength_1)

printf('\n for n=2  wavelength = %.1f A.\n',wavelength_2)

printf('\n for n=3  wavelength = %.2f A.\n',wavelength_3)

printf('\n hence, none of the wavelengths from the visible region are absent in reflected light ')
