clc
//
//
//

//Variable declaration
mu=1.33                //Refractive index
cosr=0.7989
lambda1=6.1*10**-5     //Wavelength 1
lambda2=6*10**-5       //Wavelength 2


//Calculations
t=(lambda1*lambda2*10**-5)/(2*mu*cosr*(lambda1-lambda2)*10**-5)

//Result
printf("\n The Thickness is  %0.4f  cm",t)
