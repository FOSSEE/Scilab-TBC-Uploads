




//given 
//page no 5
clc;
clear;
//Applying Snell's law
a=1*sin(428)/1.333;//a=sin(w2)
printf("Angle of refraction is %0.1f\n ",a)
printf("\n Angle of refraction is %0.0f degree \n ",asin(a)*57.27)
c=3*10^8;           //speed of light in m/s
n2=1.333;           //refractive index of 2nd medium
v2=c/n2;            //velocity in second medium in m/s
n1=1;               //refractive index of 1st medium
l1=620;             //in nm   wavelength
printf("\n Velocity of optical ray through medium second %0.02f*10^8 m/s\n",v2/10^8);
l2= (n1*l1)/n2;     //wavelength in 2nd medium in nm
printf("\n Wavelenght of optical ray through medium second %0.1f nm",l2);       //Result
