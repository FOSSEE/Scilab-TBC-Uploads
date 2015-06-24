

//example 16.11
//calculate the required depth of water to be applied
clc;funcprot(0);
//given
Eci=1.4;        // m mho/cm
Ece=11;         //saturated extract of soil
Dc=85;          //consumptive use requirement of crop

//let us assume Ecd=2Ece
Lr=Eci/(2*Ece);
Di=Dc/(1-Lr);
Di=round(Di*10)/10;
mprintf("required depth of water to be applied=%f mm.",Di);
