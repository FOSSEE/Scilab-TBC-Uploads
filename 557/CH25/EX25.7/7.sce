clc; funcprot(0);
//Example 25.7 

//Initializing the variables
Vo = 25.3;         //Outlet velocity
D = 10 ;             // Mean hydraulic diameter
f = 0.008;            // friction factor
X = 1000;             // Length of road
P = 12600;            // Absorbing power
Va = 300;            // Tunnel air flow
K1 = 0.96;
K2 = 0.9;
T = 590;             //Thrust
rho = 1.2;            // Air density 

//Calculations
alpha = (1/D)^2;
A = %pi*D^2/4;    // Area of tunnel
Vt = Va/A;
W = Vo/Vt;         //Omega
E = (1-alpha*W);
C = (1-alpha*W)*(1-E)^2 + E^2 - 1;
// Manipulating equation 25.20;
LHS = f*X*(E+1)^2/D + C + 1 ;
n = poly(0,"n");
RHS = K1*(2*((alpha*W^2 + (1-alpha)*E^2-1)+(n-1)*(alpha*W*(W-1)-C/2)));
Equation = RHS -LHS;
roots(Equation);

// Alternative approach using equation 25.22
n = (rho*((4*f*X*Vt^2)/(2*D)  + 1.5*Vt^2/2))*A/(K1*K2*T); 
Pt = round(n)*P;
disp(Pt/1000,"Total  power consumed (KW) :", round(n), "Number of fans required :");