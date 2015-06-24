clc;funcprot(0);//EXAMPLE 3.24
// Initialisation of Variables
r=14;......................//Compression ratio
Beta=1.4;................//Explosion ratio
co=6;..................//Cut off percentage
ga=1.4;.................//Ratio of specific heats
//Calculation
rho=((co/100)*(r-1))+1;...............//Cut off ratio
etadual=1-[(1/(r^(ga-1)))*((Beta*(rho^ga))-1)*(1/((Beta-1)+(Beta*ga*(rho-1))))];............//Efficiency of dual cycle
disp(etadual*100,"Efficiency of dual cycle:")
