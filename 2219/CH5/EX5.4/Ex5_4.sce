//chapter 5 example 4
//=============================================================================
clc;
clear;
//Given Data
Va    = 40*10^3;//Anode voltage of cross field amplifier
Ia    = 15;//Anode current in Amp
Pin   = 40*10^3;//input power in watts
G     = 10;//gain in dB
n     = 40/100;//overall efficiency converted from percentage to decimal
//Calculations
//Gain  = (1+(Pgen/Pin))
Pgen  = (G-1)*Pin//Generated power
ne    = (Pgen/(Va*Ia))//electronic efficiency 
nc    = n/(ne)//circuit efficiency 
Pout  = Pin+(Pgen*nc)//output power
//Output
mprintf('Electronic Efficiency is %3.2f\n Output power is %g KW',ne,Pout/1000);

//=============================================================================
