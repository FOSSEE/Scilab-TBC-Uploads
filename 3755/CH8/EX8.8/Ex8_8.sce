clear
//
//
//

//Variable declaration
a=4.28*10^-10;           //side(m)
e=1.6*10^-19;         //charge of electron

//Calculation
n=2/(a^3);
RH=-1/(n*e);     //hall coefficient(m^3/C)

//Result
printf("\n hall coefficient is %0.3f *10^-9 m^3/C",RH*10^9)
