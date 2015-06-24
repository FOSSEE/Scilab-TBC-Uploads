// Chapter7
// Page.No-250
// Example7_8
// Determine  the output voltage
//Figure 7.56
// Given
clc;
clear;
Vin=1;         //in V
T=300;          //in Kelvin
Ri=50000;           //in Ohm
Is=30*10^-9;                //in Amp
//Vout=-0.0259*ln(Vin/RiIs)
Vout=-0.0259*log1p(Vin/(Ri*Is))
printf("\n Vout when Vin=1V  %.4f V\n",Vout);
//for Vin=0.5V
Vin1=0.5;         //in V
Vout1=-0.0259*log1p(Vin1/(Ri*Is))
printf("\n Vout when Vin=0.5V  %.4f V\n",Vout1);
//for Vin=2V
Vin2=2;         //in V
Vout2=-0.0259*log1p(Vin2/(Ri*Is))
printf("\n Vout when Vin=2V  %.4f V",Vout2);
