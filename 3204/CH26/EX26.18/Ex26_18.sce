// 1 APPENDIX. Ex no 18. Page no 656
// Initilization of variables
P=5 // kN
Q=3 // kN
C=5 // kNm // couple
//  ref fig.20 // Notations have been assumed
z1=1.5 // m
z2=0.625 // m
z3=0.5 // m
x1=3.5 // m
x2=0.625 // m
// Calculations
// sum M_x=0
R_A=((P*z2)+(Q*z3)+C)/z1 // kN
// M_z=0
R_C=((Q*x1)+(P*x2))/x1 // kN
// sum F_y=0
R_B=P+Q-R_A-R_C // kN
// Results
clc
printf('The reactions are: R_A=%f kN ,R_C=%f kN and R_B=%f kN \n',R_A,R_C,R_B)
