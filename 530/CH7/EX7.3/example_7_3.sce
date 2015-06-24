clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 7
// Heat Exchangers


// Example 7.3
// Page 295
printf("Example 7.3, Page 295 \n \n");

// Because of change of phase , Thi = The
Thi = 100 ; // [C], Saturated steam
The = 100 ; // [C], Condensed steam
Tci = 30 ; // [C], Cooling water inlet
Tce = 70 ; // [C], cooling water outlet

R = (Thi-The)/(Tce-Tci) ;
S = (Tce-Tci)/(Thi-Tci) ;

// From fig 7.16
F = 1;

// For counter flow arrangement
Tm_counter = ((Thi-Tce)-(The-Tci))/log((Thi-Tce)/(The-Tci)); // [C]
// Therefore
Tm = F*Tm_counter ;
printf("Mean Temperaature Difference = %f C",Tm)
