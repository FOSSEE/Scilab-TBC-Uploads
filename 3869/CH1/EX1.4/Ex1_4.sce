clear
//
//
//

//Variable declaration
I1=10                       //intensity(Wm**-2)
I2=25                       //intensity(Wm**-2)

//Calculation
a1bya2=sqrt(I1/I2)     
ImaxbyImin=(a1bya2+1)**2/(a1bya2-1)**2  //ratio of maximum intensity to minimum intensity

//Result
printf("\n ratio of maximum intensity to minimum intensity is %0.3f  ",ImaxbyImin)
