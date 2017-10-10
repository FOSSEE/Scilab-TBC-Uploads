clc//
//
//

//Variable declaration
d=5*10^-6;     //thickness(m)
Dc=3.4*10^-3;    //diffusion coefficient(m^2 S-1)

//Calculation
tow_diff=d^2/(2*Dc);     //time taken(s)

//Result
printf("\n time taken is %0.1f *10^-9 s",tow_diff*10^9)
