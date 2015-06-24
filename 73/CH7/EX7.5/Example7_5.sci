//Chapter 7_Operational Amplifier Characteristics
//Caption : Temperature Coefficient
//Example7.5: Determine the temperature coefficient of the input offset voltage for the bipolar differential amplifier having Vos=1.5 mV. What is the percentage change in the Vos per degree temperature change.
//Solution:
clear;
clc;
// temperature cofficient of the input offset voltage for the bipolar differential amplifier Vos is=dVos/dT=Vos/T;
Vos=1.5*10^-3;//input offset voltage for bipolar differential transistor amplifier
T=300;// assuming room temperature 
TC=Vos/T;// temperature cofficient of Vos
//percentage change in the Vos per degree temperature change will be given by as follow:
PC=(TC/Vos)*100;// percentage change(PC) in the Vos per degree temperature change
disp('%per degree celcius',PC,'percentage change in the Vos   per degree temperature change is:')