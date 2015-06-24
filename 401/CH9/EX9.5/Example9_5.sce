//Example 9.5
//Program to:
//(i)Calculate Maximum Load Resistance
//(ii)Determine Bandwidth Penalty considering amplifier capacitance

clear;
clc ;
close ;

//Given data
Cd=6*10^(-12);           //Farad - PHOTODIODE CAPACITANCE
Ca=6*10^(-12);           //Farad - AMPLIFIER INPUT CAPACITANCE
B=8*10^6;                //Hz - POST DETECTION BANDWIDTH

//(i)Maximum Load Resistance
Rl=1/(2*%pi*Cd*B);

//(ii)Maximum Bandwidth considering amplifier capacitance 
Bm=1/(2*%pi*Rl*(Cd+Ca));

//Displaying the Results in Command Window
printf("\n\n\t (i)Maximum Load Resistance, Rl(max) = %0.2f kiloOhms.",Rl/10^3);
printf("\n\n\t(ii)Maximum Bandwidth considering amplifier capacitance, B = %1.0f MHz.",Bm/10^6);