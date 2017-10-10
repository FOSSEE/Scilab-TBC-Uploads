clc; funcprot(0);
//Example 8.9 Polar Curve 

// Initialisation of variables
Cl_clark = 0.43;      //Values from fig 8.18
Cd_clark = 0.020;       //Values from fig 8.18
Cl_USA = 0.55;        //Values from fig 8.19    
Cd_USA = 0.03;        //Values from fig 8.19
// Calculations
LbyD_clark = Cl_clark/Cd_clark;
LbyD_USA = Cl_USA/Cd_USA;

//Results 
disp(LbyD_clark,"Maximum L/D for clark Y :",LbyD_USA,"Maximum L/D for USA-35 :");
