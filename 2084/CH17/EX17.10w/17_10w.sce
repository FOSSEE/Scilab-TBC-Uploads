//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.10w
//calculation of the wavelengths in the visible region that are strongly reflected

//given data
d=.5*10^-6//thickness(in m) of the glass plate
mu=1.5//refractive index of the medium
lambda1=400*10^-9//minimum wavelength(in m) of the visible region
lambda2=700*10^-9//maximum wavelength(in m) of the visible region

//calculation
//condition for strong reflection of light of wavelength lambda is 
//2*mu*d = (n + (1/2))*lambda............(1)
n1=round((2*mu*d/lambda1)-(1/2))//integral value of n for lambda1
n2=round((2*mu*d/lambda2)-(1/2))//integral value of n for lambda2
lambda1n=(2*mu*d)/(n1+(1/2))//from equation (1)
lambda2n=(2*mu*d)/(n2+(1/2))//from equation (1)

printf('the wavelengths in the visible region that are strongly reflected are %d nm and %d nm',round(lambda1n*10^9),round(lambda2n*10^9))
