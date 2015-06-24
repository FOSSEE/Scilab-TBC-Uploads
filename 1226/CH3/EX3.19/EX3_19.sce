clc;funcprot(0);//EXAMPLE 3.19
// Initialisation of Variables
r=14;....................//Compression ratio
pers1=5;...............//Percentage of stroke when fuel cut off occurs
pers2=8;...............//Percentage of stroke when delayed fuel cut off occurs
v2=1;.....................//Clearance volume in m^3
ga=1.4;..................//Ratio of specific heats
//Calculations
//When the fuel is cut off at 5 %
rho1=((pers1/100)*(r-1))+1;.............//Cut off ratio
etad1=1-((((rho1^ga)-1)/(rho1-1))*(1/(ga*(r^(ga-1)))));..................//Efficiency of diesel engine
//When the fuel is cut off at 8 %
rho2=((pers2/100)*(r-1))+1;.............// Delayed Cut off ratio
etad2=1-((((rho2^ga)-1)/(rho2-1))*(1/(ga*(r^(ga-1)))));..................//Efficiency of diesel engine when cut off ratio is deyaled
disp((etad1-etad2)*100,"Percentage loss in efficiency due to delay in cut off:")
