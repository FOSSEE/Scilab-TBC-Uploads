//===========================================================================
// Chapter 5 example 29

clc;
clear;


// input data
 Hc0        = 8*10^4;       //critical field 
 T          = 4.5;          //temperature in K
 Tc         = 7.2;          //temperature in K
 D          = 1*10^-3;      //diameter in m

 
 //calculation
  Hc    = Hc0*(1-(T/Tc)^2);
  r     = D/2;      //radius in m
 Ic     = 2*%pi*r*Hc;


//result
 mprintf('critical current =%3.2f.A\n',Ic);

//=============================================================================
