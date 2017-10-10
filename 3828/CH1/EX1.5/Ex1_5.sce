//Chapter 1 : Wave Optics

clear;

//Variable declaration
i=35                 //incident angle in degrees
myu=1.33             //refractive index 
n=1                  //first minimum
t=4*10**-5           //thickness

//Calculations
cos_r=0.90
lamda1=2*myu*t*cos_r/10**-5        //for first order n=1
lamda2=(2*myu*t*cos_r)/2/10**-5    //for second order n=2
lamda3=(2*myu*t*cos_r)/3/10**-5    //for third order n=3

//Result
mprintf("(i)For the first order wavelength= %.2f*10**-5 cm" ,lamda1)
//The answer provided in the textbook is incorrect
mprintf("\n(ii)For the second order wavelength= %.2f*10**-5 cm",lamda2)
mprintf("\n(iii)For the third order wavelength= %.2f*10**-5 cm",lamda3)

