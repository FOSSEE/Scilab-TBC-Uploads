clear;
clc;
printf("\t\t\tExample Number 8.18\n\n\n");
// heater with constant heat flux and surrounding shields 
// Example 8.18 (page no.-446-449)
// solution

sigma = 5.669*10^(-8);// [W/square meter K^(4)]
T6 = 293;// [K] temperature of room
E1 = 0.8;
E2 = 0.4;
E3 = 0.4;
E4 = 0.4;
E5 = 0.4;
// in reality, surfaces 2,3,4, and 5 have two surfaces each; an inside and an outside surface. we thus have nine surfaces plus the room, so a 10 body problem is involved. of course, from symmetry we can see that T2 = T4 and T3 = T5.
// we designate the large room as surface 6 and it behaves as E6 = 1.0. 
// the shape factors of the inside surfaces are obtained from figure 8-12 and 8-14:
F16 = 0.285;
F61 = F16;
F13 = 0.24;
F15 = 0.24;
F31 = 0.24;
F51 = 0.24;
F12 = 0.115;
F14 = 0.115;
F24 = 0.068;
F42 = 0.068;
F35 = 0.285;
F53 = 0.285;
F32 = 0.115;
F52 = 0.115;
F34 = 0.115;
F25 = 0.23;
F23 = 0.23;
F45 = 0.23;
F43 = 0.23;
F21 = 0.23;
F41 = 0.23;
F26 = 0.23;
F46 = 0.23;
F11 = 0;
F22 = 0;
F33 = 0;
F44 = 0;
F55 = 0;
// for the outside surfaces,
F_26 = 1;
F_36 = 1;
F_46 = 1;
F_56 = 1;
// Where the underscore indicate the outside surfaces.
// for the room 
Eb6 = sigma*T6^(4);// [W/square meter]
// for surface 1 with constant heat flux, we use equation (8-108a) and write
// J1-(F12*J2+F13*J3+F14*J4+F15*J5+F16*J6) = 1.0*10^(5)               GIVEN             (a)
// because of the radiant balance condition we have
// (J2-Eb2)*E2*A2/(1-E2) = (Eb2-J_2)*E2*A2/(1-E2)
// and      Eb2 = (J2+J_2)/2                                                            (b)
// Where underscore indicates the outside radiosity. a similar relation applies for surfaces 3,4, and 5. thus we can use equation (8-106a) for inside surface 2
// J2-(1-E2)*(F21*J1+F23*J3+F24*J4+F25*J5+F26*J6) = E2*(J2+J_2)/2                       (c)
// and for outside surface 2
// J_2-(1-E2)*(F_26*J6) = E2*(J2+J_2)/2                                                 (d)
// Equations like (c) and (d) are written for surfaces 3,4, and 5 also, and with the shape factors and emmissivities inserted the following set of equations is obtained
// J1-0.115*J2-0.24*J3-0.115*J4-0.24*J5 = 1.0012*10^(5)                         1
// -0.138*J1+0.8*J2-0.2*J_2-0.138*J3-0.0408*J4-0.138*J5 = 57.66                 2
// 0.2*J2-0.8*J_2 = -250.68                                                     3
// -0.144*J1-0.069*J2+0.8*J3-0.2*J_3-0.069*J4-0.05*J5 = 60.16                   4
// 0.2*J3-0.8*J_3 = -250.68                                                     5
// -0.138*J1-0.0408*J2-0.138*J3+0.8*J4-0.2*J_4-0.138*J5 = 57.66                 6
// 0.2*J4-0.8*J_4 = -250.68                                                     7
// -0.144*J1-0.069*J2-0.057*J3-0.069*J4+0.8*J5-0.2*J_5 = 60.16                  8
// 0.2*J5-0.8*J_5 = -250.68                                                     9
// We thus have nine equations and nine unknowns, which may be solved by matrix method
Z = [1 -0.115 -0.24 -0.115 -0.24 0 0 0 0;-0.138 0.8 -0.138 -0.0408 -0.138 -0.2 0 0 0;0 0.2 0 0 0 -0.8 0 0 0;-0.144 -0.069 0.8 -0.069 -0.05 0 -0.2 0 0;0 0 0.2 0 0 0 -0.8 0 0;-0.138 -0.0408 -0.138 0.8 -0.138 0 0 -0.2 0;0 0 0 0.2 0 0 0 -0.8 0;-0.144 -0.069 -0.057 -0.069 0.8 0 0 0 -0.2;0 0 0 0 0.2 0 0 0 -0.8];
C = [1.0012*10^(5);57.66;-250.68;60.16;-250.68;57.66;-250.68;60.16;-250.68];
J = Z^(-1)*C;
J1 = J(1);// [W/square meter]
J2 = J(2);// [W/square meter]
J3 = J(3);// [W/square meter]
J4 = J(4);// [W/square meter]
J5 = J(5);// [W/square meter]
J_2 = J(6);// [W/square meter]
J_3 = J(7);// [W/square meter]
J_4 = J(8);// [W/square meter]
J_5 = J(9);// [W/square meter]
// the temperatures are thus computed from equation (b):
Eb2 = (J2+J_2)/2;// [W/square meter]
T2 = (Eb2/sigma)^(1/4);// [K]
T4 = T2;// [K]
Eb3 = (J3+J_3)/2;// [W/square meter]
T3 = (Eb3/sigma)^(1/4);// [K]
T5 = T3;// [K]
// for surface 1 we observed that
q = 1*10^(5);// [W/square meter]
Eb1 = q*(1-E1)/E1+J1;// [W/square meter]
// and 
T1 = (Eb1/sigma)^(1/4);// [K]
printf("temperature of all surfaces are following ");
printf("\n\n\t T1 = %f K",T1);
printf("\n\n\t T2 = %f K",T2);
printf("\n\n\t T3 = %f K",T3);
printf("\n\n\t T4 = %f K",T4);
printf("\n\n\t T5 = %f K",T5);

// surfaces 2,3,4, and 5 as one surface
// we now go back and take surfaces 2,3,4, and 5 as one surface, which we choose to call surface 7. the shape factors are then
F16 = 0.285;
F61 = 0.285;
F17 = 1-0.285;
A1 = 2.0;
A7 = 6.0;
// THUS
F71 = A1*F17/A7;
F77 = 1-2*F71;
F76 = F71;
F_76 = 1.0;
// then for surface 1 we use equation(8-109a) to obtain 
// J1-(F17*J7+F16*J6) = 1.0*10^(5)
// using Eb7 = (J7+J_7)/2, we have for the inside of surface 7 
// J7*[1-F77*(1-E7)]-(1-E7)*(F71*J1+F76*J6) = (J7+J_7)*E7/2
// while for the outside we have 
// J_7-(1-E7)*F_76*J6 = (J7+J_7)*E7/2
// when the numerical values are inserted, we obtain the set of three equations:
// J1-0.715J7 = 1.0012*10^(5)
// -0.143*J1+0.486*J7-0.2*J_7 = 59.74
// 0.2*J7-0.8*J_7 = -250.68
// Solving above three equations by matrix method
Z = [1 -0.715 0;-0.143 0.486 -0.2;0 0.2 -0.8];
C = [1.0012*10^(5);59.74;-250.68];
J = Z^(-1)*C;
J1 = J(1);// [W/square meter]
J7 = J(2);// [W/square meter]
J_7 = J(3);// [W/square meter]
// the temperatures are thus computed as before
Eb7 = (J7+J_7)/2;// [W/square meter]
T7 = (Eb7/sigma)^(1/4);// [K]
Eb1 = q*(1-E1)/E1+J1;// [W/square meter]
T11 = (Eb1/sigma)^(1/4);// [K]
printf("\n\n from second method T1 = %f K",T11);
printf("\n\n so there is a difference of %f K between the two methods",T11-T1);






























