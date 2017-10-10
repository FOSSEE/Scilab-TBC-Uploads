//Example 2.2  On Bernoulli's Equation

// Initialisation of variables
D1 = 8;
P1 = 20*144;    //Gage Pressure in lb per square feet
q = 1000;     //Rate of flow in gallon per minute.
D2 = 4;
Patm = 2116.2;
rho = 62.4;

// Calculations
q = q*231/(1728*60);     //Rate of flow in ft^3/sec
A1 = %pi*(D1/12/2)^2;       // Area in ft^2
A2 = %pi*(D2/12/2)^2;
V1 = q/A1;
V2 = q/A2;
P1_abs = P1 + Patm;
P2_abs = P1_abs + (1/2)*rho*(V1^2 - V2^2)/32.2;     // Bernoulli's Equation
P2 = (P2_abs - Patm)/144;    
 
//Results 
disp(P2, "The gage pressure in pipe at D = 4 inch (lb per sq in)  :");

