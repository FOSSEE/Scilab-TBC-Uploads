//Chapter-1,Example1_2_4,pg 1-13

//for constructive interference   2 u t cos(r) = (2 n -1) wavelength/2

u=1.33

i=45

r=asind(sind(i)/u)                            //by Snell's law

n=1                                         //for minimum thickness 

wavelength=5896*10^-8

t=(2*n-1)*wavelength/(4*u*cosd(r))

printf("\n the minimum thickness of soap film is t = %.7f cm",t)
