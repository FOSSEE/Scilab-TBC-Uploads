clc//
//
//

//Variable declaration
RH=3.66*10^-4;   //hall coefficient(m^3/coulomb)
I=10^-2;     //current(amp)
B=0.5;     //magnetic field(wb/m^2)
t=1*10^-3;    //thickness(m)

//Calculation
VH=RH*I*B*10^3/t;     //hall voltage(mV)

//Result
printf("\n hall voltage is %0.3f mV",VH)
