clear;
clc;
printf("\t\t\tExample Number 8.17\n\n\n");
// radiation from a hole with variable radiosity 
// Example 8.17 (page no.-443-446)
// solution

T1 = 1273;// [K]
T5 = 293;// [K]
E1 = 0.6;
// all the shape factors can be obtained with the aid of figure 8-13(page no.-387) and the imaginary disk surfaces 6 and 7. we have
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
Eb1 = sigma*T1^(4);// [W/square meter]
Eb2 = Eb1;// [W/square meter]
Eb3 = Eb2;// [W/square meter]
Eb4 = Eb3;// [W/square meter]
Eb5 = sigma*T5^(4);// [W/square meter]
E2 = E1;
E3 = E2;
E4 = E3;
E5 = 1.0;
r = 0.01;// [m]
A1 = %pi*r^(2);// [square m]
A5 = A1;// [square m]
A6 = A1;// [square m]
A7 = A1;// [square m]
A2 = %pi*2*r*0.01;// [square m]
A3 = A2;// [square m]
A4 = A2;// [square m]
F11 = 0;
F55 = 0;
F16 = 0.37;
F17 = 0.175;
F15 = 0.1;
F12 = 1-F16;
F54 = F12;
F13 = F16-F17;
F53 = F13;
F14 = F17-F15;
F52 = F14;
F21 = F16*A1/A2;
F26 = F21;
F45 = F21;
F36 = F45;
F37 = F36;
F22 = 1-F21-F26;
F33 = F22;
F44 = F22;
F31 = F13*A1/A3;
F32 = F36-F31;
F34 = F32;
F43 = F34;
F23 = F34;
F27 = F26-F23;
F46 = F27;
F41 = F14*A1/A4;
F25 = F41;
F42 = F46-F41;
F24 = F42;
// the equations for the radiosities are now written in the form of equation 8-106, noting that
F11 = 0;
J5 = Eb5;// [W/square meter]
//  J1 = (1-E1)*(F12*J2+F13*J3+F14*J4+F15*Eb5)+E1*Eb1
//  J2 = [(1-E2)*(F21*J1+F23*J3+F24*J4+F25*Eb5)+E2*Eb2]/(1-F22*(1-E2))
//  J3 = [(1-E3)*(F31*J1+F32*J2+F34*J4+F35*Eb5)+E3*Eb3]/(1-F33*(1-E3))
//  J4 = [(1-E2)*(F41*J1+F42*J2+F43*J3+F45*Eb5)+E4*Eb4]/(1-F44*(1-E4))
// we have 4 equations with 4 variables which can be solved by matrix method
Z = [1 -(1-E1)*F12 -(1-E1)*F13 -(1-E1)*F14;-F21*(1-E2)/(1-F22*(1-E2)) 1 -F23*(1-E2)/(1-F22*(1-E2)) -F24*(1-E2)/(1-F22*(1-E2));-F31*(1-E3)/(1-F33*(1-E3)) -F32*(1-E3)/(1-F33*(1-E3)) 1 -F34*(1-E3)/(1-F33*(1-E3));-F41*(1-E4)/(1-F44*(1-E4)) -F42*(1-E4)/(1-F44*(1-E4)) -F43*(1-E4)/(1-F44*(1-E4)) 1];
C = [E1*Eb1+(1-E1)*F15*Eb5;(E2*Eb2+F25*Eb5*(1-E2))/(1-F22*(1-E2));104859;(E4*Eb4+F45*Eb5*(1-E4))/(1-F44*(1-E4))];
J = Z^(-1)*C;
J1 = J(1);// [W/square meter]
J2 = J(2);// [W/square meter]
J3 = J(3);// [W/square meter]
J4 = J(4);// [W/square meter]
// the heat transfer can be calculated from equation(8-104):
q1 = E1*A1*(Eb1-J1)/(1-E1);// [W]
q2 = E2*A2*(Eb2-J2)/(1-E2);// [W]
q3 = E3*A3*(Eb3-J3)/(1-E3);// [W]
q4 = E4*A4*(Eb4-J4)/(1-E4);// [W]
// THE TOTAL HEAT TRANSFER 
q = q1+q2+q3+q4;// [W]
printf("the heat transfer rate is %f W",q);
// It is of interest to compare this heat transfer with the value we would obtain by assuming uniform radiosity on the hot surface. we would then have a two-body problem with
A1 = %pi+3*(2*%pi);// [square cm]
A5 = %pi*10^(-4);// [square cm]
F51 = 1.0;
E1 = 0.6;
E5 = 1.0;
// the heat transfer is then calculated from equation(8-43), with appropriate change of nomenclature:
q_new = (Eb1-Eb5)*A5/((1/E5)+(A5/A1)*((1/E1)-1));// [w]
printf("\n\nthus the assumption of uniform radiosity gives a heat transfer that is %f percent below the value obtained by breaking the hot surface into four parts for the calculations",(q-q_new)*100/q);
// let us now consider the case where surface 1 is still radiating at 1000 degree celsius 
E = 0.6;
// the nodal equations for J1 is the same as before but now the equations for J2, J3, and J4 must be written in the form of equation(8-107). when that is done and the numerical values are inserted, we obtain
//  J1 = 0.252*J2+0.078*J3+0.03*J4+89341
//  J2 = 0.5*J1+0.3452*J3+0.09524*J4+24.869
//  J3 = 0.1548*J1+0.3452*J2+0.3452*J4+64.66
//  J4 = 0.05952*J1+0.0952*J2+0.3452*J3+208.9
// when these equations are solved, we obtain
J1 = 1.1532*10^(5);// [W/square meter]
J2 = 0.81019*10^(5);// [W/square meter]
J3 = 0.57885*10^(5);// [W/square meter]
J4 = 0.34767*10^(5);// [W/square meter]
// the heat transfer at surface 1 is
A1 = %pi*10^(-4);// [square cm]
A5 = %pi*10^(-4);// [square cm]
A2 = %pi*10^(-4);// [square cm] 
q1 = (E1*A1)*(Eb1-J1)/(1-E1);// [W]
// the temperatures of the insulated surface elements are obtained from 
T2 = 820;// [degree celsius]
T3 = 732;// [degree celsius]
T4 = 612;// [degree celsius]
// it is of interest to compare the heat transfer calculated above with that obtained by assuming surfaces 2,3 and 4 uniform in temperature and radiosity. equation(8-41) applies for this case:
q2 = A1*(Eb1-Eb5)/[((A1+A2+2*A1*F15)/(A5-A1*F15^2))+(1/E1-1)+(A1/A5)*(1/E5-1)];// [w]



