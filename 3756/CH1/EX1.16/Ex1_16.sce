clc
//
//
//

//Variable declaration
mu=1.4                //Refractive index
cosr=0.8631
t=0.01*10**-3         //thickness
lambda1=4000*10**-10  //Wavelength 1
lambda2=5000*10**-10  //Wavelength 2


//Calculations
n1=(2*mu*t*cosr)/lambda1
n2=(2*mu*t*cosr)/lambda2
deln=(n1)-(n2)


//Result
printf("\n The number of dark bands seen betwween 4000 A and 5000A  is %i ",deln)

