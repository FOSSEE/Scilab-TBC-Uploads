
//===========================================================================
// chapter 4 example 16


clc;
clear;


//input data
 t       = 18*10^-6;            //relaxation time in s
 er1     = 1;                   //permitivity in F/m
 er      = 1;                   //permitivity in F/m
 t       = 18*10^-6;            //relaxation time in s
 
 //calculation
 f               =   1/(2*%pi*t);               //frequency in Hz
 theta_c             = atan(er1/er);
 theta_c_deg          = theta_c*(180/%pi);
 phi              = 90-theta_c_deg;             //phase difference in degrees
 
 
 //result
 mprintf('frequency = %3.2f KHz\n',(f/10^3));
 mprintf('phase difference =%3.2f°\n',phi);
 
 //===========================================================================
 
