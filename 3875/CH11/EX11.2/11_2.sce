clc;
clear;
e=1.6*10^-19 //charge in C
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s
n1=1 //first order maxima
n2=2 //second order maxima
V=50*10^3 //voltage in V
tetha=26 //Braggs angle in degree

//calculation
lambda_min=(h*c)/(e*V) //wavelength in m
d=(n1*lambda_min)/(2*sind(tetha))
mprintf("The interplanar spacing is = %1.2e m\n",d)

tetha2=asind((n2*lambda_min)/(2*d))
mprintf("The Braggs angle for second order reflection is = %2.1f degree",tetha2) //The answer varies due to round off error.
