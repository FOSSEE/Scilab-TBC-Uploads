//Determine the output impedance of the transistor
clear;
clc;
//soltion
//given

TR=16/1;    //turn ratio
Rl=4;//ohm   //loudspeaker impedance
ro=(TR^2)*Rl;
printf("The output impedance of the transistor %.0f Ω",ro);
