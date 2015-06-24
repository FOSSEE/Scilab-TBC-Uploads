

//example 3.1
//classify the irrigation water
clc;
//Given
Na=24;                                         //concentration of sodium ion
Ca=3.6;                                        //concentration of calcium ion
Mg=2;                                         //concentration of magnesium ion
EC=180;                                       //electrical conductivity
SAR=Na/(((Ca+Mg)/2)^(0.5));                   //Sodium absorption ratio
SAR=round(SAR*100)/100;
mprintf("SAR=%f.",SAR);
mprintf("\nWater falls under S2 class.");    //from table 3.2
mprintf("\nFor EC=180,");
mprintf("\nwater falls under C1 class.");    //from table 3.1
mprintf("\nWater is medium sodium and low saline water.");
