clc; funcprot(0);
//Example 4.3  Effect of Humidity 

// Initialisation of variables
Dry_Bulb = 80;
Wet_Bulb = 76;
Factor = 1.68;
P = 29.92;
T =  459.4+80;
P = 29.30;
Var3_by_8e = 0.30; // From Graph 

// Calculations
Dew_Point = Dry_Bulb - (Dry_Bulb-Wet_Bulb)*Factor;
rho = 0.04120*(P - Var3_by_8e)/T; 
//Results 
disp(rho,"Density of the air when the temperature is 80 degree celcius(slug per cu ft):",Dew_Point,"Dew_Point :");

