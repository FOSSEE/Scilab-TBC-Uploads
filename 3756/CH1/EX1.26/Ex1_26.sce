clc
//
//
//

//Variable declaration
n=8            //no. of ring
D8=0.72*10**-2 //Diameter of the 8th ring
R=3            //Radius

    
//Calculations
lambdaa=(D8**2)*10**10/((2*(2*n-1))*R)

//Result
printf("\n The Wavelength is %i Angstrom",lambdaa)
