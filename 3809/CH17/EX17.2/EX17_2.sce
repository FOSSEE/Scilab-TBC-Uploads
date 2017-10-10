//Chapter 17, Example 17.2
clc
//Initialisation
C=10**-6                     //capacitance in farad
RG=10**6                     //resistance in ohm
pi=3.14                      //pi


//Calculation
fc=1/(2*pi*C*RG)             //frequency in Hz

//Results
printf("Fc = %.2f Hz",fc )
