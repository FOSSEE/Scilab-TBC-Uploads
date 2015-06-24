//Example 5.6
//Refer Figure 5.20 in the Textbook
//Program to Determine the Dynamic Output Resistance, 
//DC Current Gain & AC Current Gain from given output characteristics
clear;
clc ;
close ;
//Given Data 
Vce=10; //V
Ib=30*10^(-6); //A
//Calculation from Given Output Characteristics at Ib = 30uA
dVce=(12.5-7.5); //V
dic=(3.7-3.5)*10^(-3); //A
Ic=3.6*10^(-3); //A
ro=dVce/dic; // Dynamic Output Resistance
Beeta_dc=Ic/Ib; // DC Current Gain
Beeta_ac=((4.7-3.6)*10^(-3))/((40-30)*10^(-6));//AC Current Gain, From Graph, Bac=delta(ic)/delta(ib) for given Vce
//Displaying The Results in Command Window
printf("\n\t Dynamic Output Resistance ,ro = %f kOhms",ro/10^(3));
printf("\n\t DC Current Gain ,Bdc = %f ",Beeta_dc);
printf("\n\t AC Current Gain ,Bac = %f ",Beeta_ac);