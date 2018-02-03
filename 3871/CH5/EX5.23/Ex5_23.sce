//===========================================================================
//chapter 5 example 23
clc;
clear all;

//variable declaration
 Ir           = 2.22;		//measured reading reading in A
Ks          = 1.11;		//form factor for sinusoidal wave

//calculations
Iav     = Ir/(Ks);		//average value of current under measurement in A
Imax    = 2*Iav;		//peak value of current in A
Irms    = Imax/(sqrt(3));		//RMS value of current in 
e          = ((Ir-Irms)/(Irms))*100;		//percentage errror in %

//result
mprintf("peak value of current = %3.2f A",Imax);
mprintf("\nRMS value of current = %3.3f A",Irms);
mprintf("\npercentage error = %3.2f percentage(low)",e);
