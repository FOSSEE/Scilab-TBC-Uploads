//Determine the turns ratio of the transformer
clear;
clc;
//soltion
//given

Rl=8;//ohm
Rl_=5*10^3;//ohm
TR=sqrt(Rl_/Rl);       //Turns ratio
printf("Turns Ratio= %.0f : 1",TR);
