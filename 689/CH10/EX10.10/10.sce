clc; funcprot(0);
//Example 10.10 Ground Effect

// Initialisation of variables
alp = 10;        //True angle of attack
c = 6;
b = 36;
V = 100;        // Free stream velocity
rho = 0.002387;
Cl = 1.07;        //From fig 8.8
Cd = 0.077;       //From fig 8.8
z = 4;            // Height above ground
gap = 2*z;

// Calculations
S = c*b;
L = Cl*(rho/2)*S*V^2;
D = Cd*(rho/2)*S*V^2;
gapBYspan = gap/S;
sigma =  0.46;        // From fig 8.10
EMAR = (b^2/S)/(1-sigma);
alpG = alp - (-5);                      //Effective geometric angle of attack for clark Y after sutracting zero lift angle. 
a = alpG - 18.25*(1/c -1/EMAR)          //Angle of attack measured from angle of zero lift for Cl = 1.07.
m = Cl/a;                               // Slope of lift curve
Cl_g = alpG*m                           // Lift Coefficient taking ground under consideration
L_g = Cl_g*(rho/2)*S*V^2   ;            //Lift taking ground under consideration
Cd = 0.090;                             //From figure 8.8 for Cl = 1.19
Cd_g = Cd - (Cl^2/%pi)*(1/c -1/EMAR);   // Lift Coefficient taking ground under consideration
D_g = Cd_g*(rho/2)*S*V^2   ;            //Drag taking ground under consideration

//Results 
disp(D,"Drag when ground is neglected (lb) :", L,"Lift when ground is neglected (lb) :" );
disp(D_g,"Drag when ground is considered (lb) :", L_g,"Lift when ground is considered (lb) :" );
