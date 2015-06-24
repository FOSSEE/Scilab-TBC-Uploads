

clc
//initialization of variables
x0 = 0.0082
xB = 10^-4
L = 1
//Calculations
y0 = 36*x0
//There are two balancing equations , mole fraction balance , mole balance , from them G is 
G0 = (xB-x0)*L/(xB-y0)
G = 3*G0
B = L-G
y1 = ((L*x0)-(B*xB))/G
yNplus1 = 36*xB
xN = (L*x0 - (G*(y1-yNplus1)))/L
yN = 36*xN
N = (log((yNplus1-yN)/(y1-y0)))/log((yNplus1-y1)/(yN-y0))
//Results
printf("The number of stages are %.1f",N)
//Answer wrong in textbook

