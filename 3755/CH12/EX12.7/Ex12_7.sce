clear
//
//
//

//Variable declaration
lamda=10.66*10^-6;    //wavelength(m)
delta_lamda=10^-5*10^-9;      //line width(m)

//Calculation
cl=lamda^2/delta_lamda;      //coherence length(m)

//Result
printf("\n coherence length is %0.2f km",cl/10^3)
printf("\n answer varies due to rounding off errors")
