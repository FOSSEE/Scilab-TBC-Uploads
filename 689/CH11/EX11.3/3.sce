clc; funcprot(0);
//Example 11.3 Lift at subsonic speed

// Initialisation of variables
alp_z = -4;                 //Angle of attack at zero lift
M16 = 0.16;
Cl = 0.3;
alp = 1.5;
M0 = 0;
M65 = 0.65;
alp25 = 2.5;

// Calculations
//At M = 1.6
DCl_by_Dalp16 = Cl/(alp-alp_z);

//At M = 0
DCl_by_Dalp0 = DCl_by_Dalp16*sqrt(1-M16^2);

////At M = 0.65
DCl_by_Dalp65 = DCl_by_Dalp0/sqrt(1-M65^2);

Cl25 =  (alp25 - alp_z)*DCl_by_Dalp65;

//Results 
disp(Cl25,"Lift Coefficient at alpha = 2.5 degree: ") ;
