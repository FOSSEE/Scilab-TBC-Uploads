//===========================================================================
// chapter 6 example 17 


clc;
clear;


//input data
 C      = 0.03*10^-6;           //capacitance in F
 d      = 0.001;               //thickness in m
 er     = 2.6;                 //dielectric constant
 e0     = 8.85*10^-12;         //dielectric strength 
 E0     = 1.8*10^7 
 
//formula
//C=e0*er*A/d
//e0=v/d
//calculation
 A      = (C*d)/(e0*er);        //area of dielectric needed in m^2
 Vb      = E0*d;                //breakdown voltage in m

//result
mprintf('area=%3.2f.m^2\n',A);
mprintf(' breakdown voltage=%3.1e.V\n',Vb);

//===========================================================================

