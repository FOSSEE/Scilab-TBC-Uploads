//Chapter-1,Example1_2_5,pg 1-14

u=1.3                                      //refractive index of liquid
  
r=0                                        //angle of refraction for normal incidence
 
wavelength_1=7000                          //wavelength of light 

wavelength_2=5000                          //wavelength of light 

//for destructive interference    '2*u*t*cos(r) = (2*n-1)*wavelength/2'

//'n' order for 'wavelength_1' and 'n+1' order for 'wavelength_2'

//as LHS  is same for both the wavelengths,   therefore

//(2*n-1)*7000/2 =(2*(n+1)-1)*5000/2

n=3                                       //number of orders 

t=((2*n)-1)*wavelength_1/(4*u*cosd(r))

printf('\nThe thickness of oil layer is t = %.2f A.',t)
