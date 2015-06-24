//clear//
clear;
clc;

//Example 27.5
//Let: A = MgSO4; B = MgSO4.7H2O; C = H2O
//Given
xA = 0.31;
T = 86; //[F]
Tb = 2; //[F]
vbys = 0.15;
//PB = 
rho_cr = 105; //[lb/ft^3]
rho_ml = 82.5; //[lb/ft^3]

//Solution
//Basis:
F = 10000; //[lb/h]
//From Fig 27.13 and Fig 27.4
crbyml = vbys*rho_cr/((1-vbys)*rho_ml);
ml_prod = F/crbyml; //[lb/h]
magma_prod = F+ml_prod //[lb/h]
xA_avg = (crbyml*0.488+0.285)/1.224;
//The enthalpy of the magam
Hmag = (crbyml*(-149)+(-43))/1.224; //[Btu/lb]
//These are the concenrations of the point e. The point for the feed must 
//lie on the straight line ae. 
//The enthalpy of the feed
Hf = -21; //[Btu/lb]
//Temperature of the feed
Tf = 130; //[F]
//By COG principle, the evaporation rate
evap_rate = magma_prod*(Hf-Hmag)/(1098-Hf); //[lb/h]
Total_feed = magma_prod+evap_rate; //[lb/h]
disp('F',Tf,'Temperature of the feed is');
disp('lb/h',Total_feed,'Total feed rate');
disp('lb/h',evap_rate,'Total evaporation rate');
