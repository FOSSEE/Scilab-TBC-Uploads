clc
//
//
//

//Variable declaration
lambdaa=5400*10**-10        //Wavelength
tc=10**-10                  //coherence time
c=3*10**-8                 

//Calculations
dom=((lambdaa)/(tc*c))*10**-10

//Result
printf("\n The Degree of Monochromaticity is %2.0f *10**-6",dom)
