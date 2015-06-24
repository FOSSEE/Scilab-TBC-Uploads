//example 14.8
clc; funcprot(0);
// Initialization of Variable
rho=0.00238;
U=93.5;//velocity
Cd1=0.55;//coeff of drag
A1=5.2*5.1;
D1940=1/2*rho*Cd1*A1*U^2;
disp(D1940,"drag force in lbf");
A2=5.2*4.3;
Cd2=0.3;
D2003=1/2*rho*Cd2*A2*U^2;
disp(D2003,"drag force in lbf");
W1940=D1940*U/550;
disp(W1940,"power required to overcome drag force in hp");
W2003=D2003*U/550;
disp(W2003,"power required to overcome drag force in hp");
clear()
