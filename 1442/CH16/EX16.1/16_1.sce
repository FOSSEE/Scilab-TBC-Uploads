clc
//initialisation of variables
m= 10 //kg
R= 8.314 //J/mol K
k= 1.4
M= 29 //kg
TA= 20 //C
TB= 200 //C
//CALCULATIONS
T= (TA+TB)/2
dS= 0.5*m*R*log((273.15+T)^2/((273.15+TA))*(273.15+TB))/((k-1)*M)
//RESULTS
printf (' entropy at the equillibrium state= %.4f kJ/K',dS)


//answer GIVEN IN THE TEXTBOOK IS WRONG
