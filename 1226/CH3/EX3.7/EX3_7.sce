clc;funcprot(0);//EXAMPLE 3.7
// Initialisation of Variables
etaotto=0.6;............//Efficiency of otto engine
ga=1.5;.................//Ratio of specific heats
//Calculations
r=(1/(1-etaotto))^(1/(ga-1));................//Compression ratio
disp(r,"The compression ratio of the engine is:")
