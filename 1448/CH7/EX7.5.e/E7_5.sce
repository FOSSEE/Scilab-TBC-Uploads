clc
//Initialization of variables
species=['N2' 'H2' 'NH3']
change=['-x' '-3x' '2x']
E=['1-x' '3-3x' '2x']
disp("Concentration table")
disp(species)
disp(change)
disp(E)
K=977
//Calculations
g=sqrt(27*K/4)
x=poly(0,'x');
vector=roots(g*x^2 -(2*g +1)*x +g)
sol=vector(2)
PN2=1-sol
PH2=3-3*sol
PNH3=2*sol
K=PNH3^2/(PH2^3 *PN2)
//results
printf("Pressure of N2 gas =%.2f bar",PN2)
printf("\n Pressure of H2 gas =%.2f bar",PH2)
printf("\n Pressure of NH3 gas =%.2f bar",PNH3)
printf("\n K final = %.1e> it is close to original value.",K)
