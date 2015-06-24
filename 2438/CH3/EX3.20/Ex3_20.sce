//==================================================================================================
// chapter 3 example 20


clc;
clear;

//input data
 f      = 50;                  //number of reversals/s in Hz
 W      = 50;                  //weight in kg
 d      = 7500;                //density in kg/m^3
 A      = 200;                 //area in  joules /m^3
 
 //calculation
 
 V      = 1/d;           //volume of 1 kg iron
 E      = A*V;             //loss of energy per kg
 L      = f*E;           //hysteresisloss/s in Joule/second
 Lh     = L*60*60;         //loss per hour
 
 //calculation
 mprintf('loss of energy per hour =%3.2f\n',Lh);
 mprintf('calculation mistake in textbook in calculating Lh');

//=======================================================================================================
 
