//=======================================================================
// chpter 3 example 21


clc;
clear;

//input data
f       = 50;             //frequency in Hz
Bm      = 1.1;           //magnetic flux in Wb/m^2
t       = 0.0005;        //thickness of sheet 
p       = 30*10^-8*7800;       //resistivity in ohms m
d       = 7800;                 //density in kg/m^3
Hl      = 380;                  //hysteresis loss per cycle in W-S/m^2

//calculation
 Pl     = ((%pi^2)*(f^2)*(Bm^2)*(t^2))/(6*p);    //eddy current loss
 Hel     = (Hl*f)/d;                            //hysteresis loss
 Tl      = Pl+Hel;                               //total iron loss
 
 //result
 mprintf('total iron loss =%3.2f watt/kg \n',Tl);
 
 


