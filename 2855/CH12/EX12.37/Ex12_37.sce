//Chapter 12
//page no 531
//given
clc;
clear ;
Aeff=55;            //in sq micrometer
l=1557;         //wavelength in nm
c=3*10^5;           //speed of light in km/s
n2=2.6*10^-16;          //in cm^2/W
D=0.20;                     //Dispersion constant in ps/nm/km
Tfwhm=30;              //in ps
Zs=[2*%pi*c*Tfwhm^2/l^2/D]/(1.763)^2 ;//charecteristic length 
printf("\n Zs = %0.0f km",Zs);       //result 
Ps=(Aeff*10^-12*l*10^-9)/(2*%pi*n2*10^-4*Zs*10^3);//Peak pulse power
//Miscalculation in the book
printf("\n Ps = %0.2f mW",Ps*1000);      //Result
