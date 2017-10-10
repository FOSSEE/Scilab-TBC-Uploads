//Example 2.3  On Venturi Tube

// Initialisation of variables
Da = 12 / 12; 
Db = 6 / 12;    
DP = 5*70.73;     //Pressure difference in lb per sq feet
rho = 62.4;

// Calculations
Ab = %pi*(Db/2)^2;
Ab_Aa = (Db/Da)^2;
Denominator = (rho/2)*(1 - Ab_Aa^2)/32.2;
Q = Ab*sqrt(DP/Denominator);     //Formula for venturi tube

//Results 
disp(Q, "Flow rate (cu ft per sec)  :");

