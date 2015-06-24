clear;
clc;
printf("\t\t\tExample Number 8.16\n\n\n");
// numerical solution for parallel plates 
// Example 8.16 (page no.-440-443) 
// solution

T1 = 1000;// [K]
T2 = 400;// [K]
E1 = 0.8;//
E2 = 0.5;//
// consulting figure 8-12, we obtain 
F12 = 0.2;
F21 = 0.2; 
F11 = 0;
F22 = 0;
F13 = 0.8;
F23 = 0.8;
A1 = 1;// [square meter]
A2 = 1;// [square meter]
// surface 3 is the surrounding or insulated surface. For part A(the plates are surrounded by a large room at 300K)
T3 = 300;// [K]
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
Eb1 = sigma*T1^(4);// [W/square meter]
Eb2 = sigma*T2^(4);// [W/square meter]
Eb3 = sigma*T3^(4);// [W/square meter]
// because A3 tends to infinity, F31 and F32 must approach zero since A1*F13 = A3*F31 and A2*F23 = A3*F32. the nodal equations are written in the form of equations (8-107):
// surface 1       J1-(1-E1)*(F11*J1+F12*J2+F13*J3) = E1*Eb1
// surface 2       J2-(1-E2)*(F21*J1+F22*J2+F23*J3) = E2*Eb2
// surface 3       J3-(1-E3)*(F31*J1+F32*J2+F33*J3) = E3*Eb3

// because F31 and F32 approach zero, F33 must be 1.0.
F33 = 1;
// inserting the various numerical values for the various terms and solving the third equation we get
// the third equation as:  J3*E3 = E3*Eb3  so we get the value of J3  as
J3 = Eb3;// [W/square meter]
// finally the equations are written in compact form after getting the value of J3 we solve for J2 and J1 by matrix method
Z = [1-(1-E1)*F11 -(1-E1)*F12;-(1-E2)*F21 1-(1-E2)*F22];
C = [E1*Eb1+(1-E1)*F13*J3;E2*Eb2+(1-E2)*F23*J3];
J = Z^(-1)*C;
J1 = J(1);// [W/square meter]
J2 = J(2);// [W/square meter]
// the heat transfers are obtained from equation (8-104):
q1 = A1*E1*(Eb1-J1)/(1-E1);// [W]
q2 = A2*E2*(Eb2-J2)/(1-E2);// [W]
// the net heat absorbed by the room is algebric sum of q1 and q2
q3_absorbed = q1+q2;// [W]
printf("\t\t CASE(A)");
printf("\n\n the heat transfers are \n\n\t\t q1 = %f kW",q1/1000);
printf("\n\t\t q1 = %f kW",q2/1000)
printf("\n\n the net heat absorbed by the room in part (a) is %f kW",q3_absorbed/1000);

// for part(b), A3 for the enclosing wall is 4.0 square meter

A3 = 4;// [square meter]
// and we set 
J3 = Eb3;// [W/square meter], because surface 3 is insulated.
// from reciprocity we have 
F31 = A1*F13/A3;
F32 = A2*F23/A3;
// then, we have
F33 = 1-F31-F32;
// the set of equations are same with J3 = Eb3
// surface 1       J1-(1-E1)*(F11*J1+F12*J2+F13*J3) = E1*Eb1
// surface 2       J2-(1-E2)*(F21*J1+F22*J2+F23*J3) = E2*Eb2
// surface 3       J3-(1-E3)*(F31*J1+F32*J2+F33*J3) = E3*J3
// the third equation of set can be written as 
// J3(1-E3)-(1-E3)*(F31*J1+F32*J2+F33*J3) = 0
// so that (1-E3) term drops out, and we obtain three equation in three variable which can be solved by matrix method
Z = [1-(1-E1)*F11 -(1-E1)*F12 -(1-E1)*F13;-(1-E2)*F21 1-(1-E2)*F22 -(1-E2)*F23;-F31 -F32 1-F33];
C = [E1*Eb1;E2*Eb2;0];
J = Z^(-1)*C;
J1n = J(1);// [W/square meter]
J2n = J(2);// [W/square meter]
J3n = J(3);// [W/square meter]
// the heat transfers are 
q1n = A1*E1*(Eb1-J1n)/(1-E1);// [W]
q2n = A2*E2*(Eb2-J2n)/(1-E2);// [W]
// of course these heat transfers should be equal in magnitude with opposite sign because the insulated wall exchanges no heat.
// the temperature of the insulated wall is obtained from
T3 = (J3n/sigma)^(1/4);// [degree celsius]
printf("\n\n \t\tCASE(B)");
printf("\n\n the heat transfers are \n\n\t\t q1 = %f kW",q1n/1000);
printf("\n\t\t q2 = %f kW",q2n/1000);
printf("\n\n the temperature of the insulated wall is %f K",T3);















