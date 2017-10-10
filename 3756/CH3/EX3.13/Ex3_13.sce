clc
//
//
//

//Variable declaration
lambdaa=5086*10**-7            //Wavelength
s=29.73                        //Specific rotation

//Calculations
delmu=((s*lambdaa)/180)*10**5

//Result
printf("\n The Difference in RI is %1.1f *10**-5",delmu)
