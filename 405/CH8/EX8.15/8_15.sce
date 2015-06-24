clear;
clc;
printf("\t\t\tExample Number 8.15\n\n\n");
// numerical solution for enclosure 
// Example 8.15 (page no.-440) 
// solution

// the geometry of example 8-5 is used
d = 0.6;// [m] diameter of long half-circular cylinder
L = 0.2;// [m] length of square rod
E2 = 0.5;
T2 = 1000;// [K] temperature of body 2
T3 = 300;// [K] temperature of body 3
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
// for unit length we have:
Eb2 = sigma*T2^(4);// [W/square meter]
Eb3 = sigma*T3^(4);
A1 = 4*L;// [square meter]
A2 = %pi*d/2;// [square meter/meter]
// we will use the numerical formulation. we find from example 8-5, using the nomenclature of the figure 
F11 = 0.314;
F12 = 0.425;
F13 = 0.261;
F21 = 0.5;
F22 = 0;
F23 = 0.5;
// F31, F32 tends to zero so 
F33 = 1;
// we now write the equations. 
// surface 1 is insulated so we use equation(8-107a):
// J1*(1-F11)-F12*J2-F13*J3 = 0
// surface 2 is constant temperature so we use equation (8-106a):
// J2*(1-F22*(1-E2))-(1-E2)*[F21*J1+F23*J3] = E2*Eb2
// because surface 3 is so large 
J3 = Eb3;// [W/square meter]
// rearranging the equation gives 
// J1*(1-F11)-J2*F12 = F13*J3
// J1*(-1)*(1-E2)*F21+J2*(1-F22*(1-E2)) = E2*Eb2+(1-E2)*(F23*J3)
// solving the above two equations using matrix
X = [(1-F11) -F12;(-1)*(1-E2)*F21 (1-F22*(1-E2))];
Y = [F13*J3;E2*Eb2+(1-E2)*(F23*J3)];
J = X^(-1)*Y;
J1 = J(1);// [W/square meter]
J2 = J(2);// [W/square meter]
// the heat transfer is thus 
q = (Eb2-J2)/((1-E2)/(E2*A1));// [W/m] length
// because surface 1 is insulated 
Eb1 = J1;// [W/square meter]
// we could calculate the temperature as 
T1 = (Eb1/sigma)^(1/4);// [K]
printf("heat lost to the large room per unit length of surface 2 is %f W/m",q);
printf("\n\n temperature of the insulated surface is %f K",T1);























