//===========================================================================
// Chapter 5 example 31

clc;
clear;


// input data
 HcT        = 1.5*10^5;     // critical field for niobium at 0 K
 Hc0        = 2*10^5;       // critical field for nobium at 0 K
 T          = 8;            // temperature in K
 

//calculation
 Tc     = T/((1-(HcT/Hc0))^0.5);
 

//result
 mprintf('transition temperature =%3.2f.K\n',Tc);
 
 //========================================================================
