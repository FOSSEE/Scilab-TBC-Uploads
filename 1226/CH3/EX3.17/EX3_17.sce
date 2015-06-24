clc;funcprot(0);//EXAMPLE 3.17
// Initialisation of Variables
r=15;...................//Compression ratio
ga=1.4;..............//Ratio os fpecific heats for air
perQ=6;................//Heat addition at constant pressure takes place at 6% of stroke
//Calculations
rho=1+((perQ/100)*(r-1));.............//Cut off ratio
etad=1-((((rho^ga)-1)/(rho-1))*(1/(ga*(r^(ga-1)))));..................//Efficiency of diesel engine
disp(etad*100,"Efficiency of diesel engine in %:")
