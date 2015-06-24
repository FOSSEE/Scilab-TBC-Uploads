clc;funcprot(0);//EXAMPLE 4.4
// Initialisation of Variables
r=18;..........................//Compression Ratio
co=5;..........................//Cut off percent of stroke
cv=0.71;.......................//Mean specific heat for cycle in kJ/kg K
R=0.285;.......................//Charecteristic gas constant in kJ/kh K
cvinc=2;.......................//Percentage increase in mean specific heat of the cycle
//Calculation
rho=(co/100)*(r-1)+1;
ga=1+(R/cv);
eta=1-(1/(ga*(r^(ga-1))))*((rho^ga)-1)/(rho-1);.....................//Efficiency of diesel cycle 
etach=-((1-eta)/eta)*(ga-1)*(log(r)-(((rho^ga)*log(rho))/((rho^ga)-1))+(1/ga))*(cvinc/100);...//Variation in the air standard efficiency
disp(etach*100,"Percentage change in efficiency ")
