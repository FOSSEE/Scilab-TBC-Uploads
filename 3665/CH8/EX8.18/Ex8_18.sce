clc//
//
//

//Variable declaration
I=30;    //current(A)
B=1.75;   //magnetic field(T)
n=6.55*10^28;    //electron concentration(/m^3)
t=0.35*10^-2;    //thickness(m)
e=1.6*10^-19; 

//Calculation
VH=I*B*10^6/(n*e*t);     //hall voltage(micro V)

//Result
printf("\n hall voltage is %0.3f micro V",VH)
