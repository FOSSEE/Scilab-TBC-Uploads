//Numerical calculation of allowable load
d1 = 4; //mm
d2 = 3; //mm
A1 = (%pi*(d1^2))/4 ; //area
A2 = (%pi*(d2^2))/4 ; //area
L1 = 0.4; //meter
L2 = 0.3; //meter
E1 = 72e9 ; //Gpa
E2 = 45e9 ; //Gpa
f1 = L1/(E1*A1) * 1e6 ; // To cpmpensate for the mm^2
f2 = L2/(E2*A2) * 1e6 ;
s1 = 200e6; //stress
s2 = 175e6; //stress
P1 = ( (s1*A1*(4*f1 + f2))/(3*f2) ) * 1e-6 // To cpmpensate for the mm^2
P2 = ( (s2*A2*(4*f1 + f2))/(6*f1) ) * 1e-6 
disp( "Newton",P2,"Minimum allowable stress aomong the two P1 and P2 is smaller one, therefore MAS = ")