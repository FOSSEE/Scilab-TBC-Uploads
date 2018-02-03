clc;
clear;
i=35 //angle of incidence in degree
myu=1.33 //refractive index
d=5*10^-5 //thickness of the soap film in cm
n1=1 //for first order 
n2=2 //for second order 
n3=3 //for third order 
n4=4 //for fourth order 

//calculation
r=asind(sind(i)/myu) //angle of refraction in degree

//case(1) for first order
lambda_1=(2*myu*d*cosd(r))/n1

//case(2) for second order
lambda_2=(2*myu*d*cosd(r))/n2

//case(3) for third order
lambda_3=(2*myu*d*cosd(r))/n3

//case(14) for fourth order
lambda_4=(2*myu*d*cosd(r))/n4


mprintf("\n The wavelength of light for first order is = %1.2e cm and it lies in the infrared region\n",lambda_1)
mprintf("\n The wavelength of light for second order is = %1.1e cm and it lies in the visible region\n",lambda_2)
mprintf("\n The wavelength of light for third order is = %1.1e cm and it lies in the visible region\n",lambda_3)
mprintf("\n The wavelength of light for fourth order is = %1.1e cm and it lies in the ultravoilet(invisible) region\n",lambda_4)
mprintf("\nThe absent wavelengths in the reflected light are %1.1e cm and %1.1e cm",lambda_2,lambda_3)
