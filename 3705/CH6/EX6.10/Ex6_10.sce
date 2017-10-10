
clear//

//Variable Declaration
P1=150 //Load in lb
P2=30 //Load in lb
R_A=78 //Reaction at A in lb
R_C=102 //Reaction at C in lb
L1=4 //Length in ft
L2=6 //Length in ft
M1=780 //Moment in lb.ft
M2=900 //Moment in lb.ft
M3=120 //Moment in lb.ft

//Calculations
EI_AC=0.5*(L1+L2)*M1*(2*3**-1)*(L1+L2)-(0.5*L2*M2*(L1+(2*3**-1)*L2)) //Deflection in lb.ft^3
EI_thetaC=EI_AC/(L1+L2) //Deflection in lb.ft^2

EI_DC=-0.5*L1*M3*2*3**-1*L1 //Deflection in lb.ft^3
EI_deltaD=EI_thetaC*L1-(-EI_DC) //Deflection in lb.ft^2

//Result
printf("\n The deflection is %0.0f lb.ft^2 upwards",EI_deltaD)
