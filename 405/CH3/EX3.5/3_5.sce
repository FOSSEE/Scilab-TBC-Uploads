clear;
clc;
printf("\t\t\tExample Number 3.5\n\n\n");
// Example 3.5 (page no.-86-88)
// Nine-node problem
// solution

h = 10;// [W/square meter per degree celsius] convectional heat transfer coefficient
k = 10;// [W/m per degree celsius] heat transfer coefficient 
dx = 1/3;// [m] length of small squares in x direction
dy = 1/3;// [m] length of small squares in y direction
y = h*dx/(k);// to use in equation (3-25) and (3-26)
// the nodal equation for nodes is following
// T2+T4-4*T1 = -600 FOR NODE 1
// T3+T1+T5-4*T2 = -500 FOR NODE 2
// 2*T2+T6-4.67*T3 = -567 FOR NODE 3
// T5+T7+T1-4*T4 = -100 FOR NODE 4
// T6+T4+T8+T2-4*T5 = 0 FOR NODE 5
// 2*T5+T3+T9-4.67*T6 = -67 FOR NODE 6
// 2*T4+T8-4.67*T7 = -167 FOR NODE 7
// 2*T5+T7+T9-4.67*T8 = -67 FOR NODE 8
// T6+T8-2.67*T9 = -67 FOR NODE 9
A = [-4 1 0 1 0 0 0 0 0;1 -4 1 0 1 0 0 0 0;0 2 -4.67 0 0 1 0 0 0;1 0 0 -4 1 0 1 0 0;0 1 0 1 -4 1 0 1 0;0 0 1 0 2 -4.67 0 0 1;0 0 0 2 0 0 -4.67 1 0;0 0 0 0 2 0 1 -4.67 1;0 0 0 0 0 1 0 1 -2.67];
C = [-600;-500;-567;-100;0;-67;-167;-67;-67];
T = A^(-1)*C;// [degree celsius]
printf("The nodal temperature of node 1 to 9 is shown below respectively");
disp(T);
// the heat flows at the boundaries are computed in two ways:
// as conduction flows for the 100 and 500 degree celsius faces and
// as convection flows for the other two faces 
// for the 500 degree face the heat flow into the face is  q = sigma(k*dx*dT/dy)
// where dt is temperature difference and dy is length of small squares in y direction
q = k*dx*[500-T(1)+500-T(2)+(500-T(3))/2]/dy;// [W/m]
// the heat flow out of the 100 degree face is  q = sigma(k*dy*dT/dx)
q1 = k*dy*[T(1)-100+T(4)-100+(T(7)-100)/2]/dx;// [W/m]
// the convection heat flow out the right face is given by the convection relation q = sigma(h*dy*(T-Tinf))
q2 = h*dy*[T(3)-100+T(6)-100+(T(9)-100)/2];// [W/m]
// the convection heat flow out the bottom face is given by the convection relation q = sigma(h*dx*(T-Tinf))
q3 = h*dx*[(100-100)/2+T(7)-100+T(8)-100+(T(9)-100)/2];// [W/m]
// total heat flow out is 
qt = q1+q2+q3;
printf(" heat conducted into the top face is %f W/m",q);
printf("\n total heat flow out is %f W/m",qt);
printf("\n this compares that heat flow into the system is equal to the heat flow out of the system ");





