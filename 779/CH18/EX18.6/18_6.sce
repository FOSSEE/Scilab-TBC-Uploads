P1 = 1; P41 = 15; // P41 = P4/P1
P21 = (P41)^(1/3);
P2 = P21*P1; n = 1.3; R = 0.287;
P3 = P21*P2;
P11 = P2; P12 = P1;
b = 0.45; s = 0.3; // Bore and stroke of cylinder
Vs = (%pi/4)*b^2*s; // Swept volume of the cylinder
V11 = 0.05*Vs; // Clearance volume
V1 = V11+Vs;
V12 = V11*(P11/P12)^(1/n);
disp("m3",V1-V12,"Effective swept volume of the LP cylinder is")
T1 = 291; T3 = T1; T5 = T1;
P43 = P21; // P4/P3
T6 = T5*(P43)^((n-1)/n);
disp("K",T6,"Delivery temperature is")
P4 = 15; // Delivery pressure
V6_7 = (P1/P4)*(T6/T1)*(V1-V12); // V6-V7
disp("m3",V6_7,"Volume of the air delivered")
W = ((3*n*R*T1)/(n-1))*((P21)^((n-1)/n)-1);
disp("kJ",W,"Work done per kg of the air is")
