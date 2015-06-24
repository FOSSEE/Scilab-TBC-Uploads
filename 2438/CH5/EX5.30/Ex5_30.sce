//=============================================================================
// Chapter 5 example 30

clc;
clear;


// input data
 Hc0        = 0.0306;       //critical field at 0 K
 T          = 2;        //temperature in K
 Tc         = 3.7;      //temperature in K
 
 
 //calculation
  Hc    = Hc0*(1-(T/Tc)^2);


//result
 mprintf('critical field =%3.4f tesla\n',Hc);
 
 //==============================================================================
