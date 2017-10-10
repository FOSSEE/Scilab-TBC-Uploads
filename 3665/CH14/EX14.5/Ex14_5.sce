clc//
//
//

//Variable declaration
V=20*15*5;    //volume(m^3)
T=3.5;    //time(s)
A=950;    //surface area(m^2)

//Calculation
sigma_as=0.165*V/T;          //total absorption in the hall(OWU)
ac=sigma_as/A;       //average absorption coefficient

//Result
printf("\n total absorption in the hall is %0.3f OWU",sigma_as)
printf("\n average absorption coefficient is %0.3f sabine/m^2",ac)
