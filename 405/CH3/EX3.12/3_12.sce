clear;
clc;
printf("\t\t\tExample Number 3.12\n\n\n");
// Three-dimensional numerical formulation
// Example 3.12 (page no.-110-113)
// solution

Tinf = 10;// [degree celsius] environment temperature
h = 500;// [W/square meter degree celsius]
Ts = 100;// [degree celsius] four side temperature
k = 2;// [W/m degree celsius]
dx = 0.01;// [m]
dy = 0.01;// [m]
dz = 0.01;// [m]
// all of the interior nodes for Z-planes 2,3,4 have resistances of 
A = dy*dz;// [square meter]
one_by_R = k*A/dx;
one_by_R_11_21 = one_by_R;
one_by_R_21_22 = one_by_R;
// the surface conduction resistances for surface Z-plane are
one_by_R_11_12 = k*A/dx;
one_by_R_11_14 = one_by_R_11_12;
// the surface convection resistances are 
one_by_R_11_inf = h*A;
// for surfaces nodes like 11 the sum_one_by_R_ij term in equation (3-32) becomes 
sum_one_by_R_11_j = 4*one_by_R_11_12+one_by_R+one_by_R_11_inf;
// while, for interior nodes, we have 
sum_one_by_R_21_j = 6*one_by_R;
// for the insulated black surface nodes 
sum_one_by_R_51_j = 4*one_by_R_11_12+one_by_R;
// there are 30 nodes in total; 6 in each z-plane. we could write the equations for all of them but prefer to take advantage of the symmetry of the problem as indicated in figure. thus,
// T11 = T13 = T14 = T16 And T12 = T15, etc
// we may then write the surface nodal equations as 
// T11 = [0.05*Tinf+0.02*T21+(0.01)*(100+100+T14+T12)]/0.11
// T12 = [0.05*Tinf+0.02*T22+(0.01)*(100+T11+T15+T13)]/0.11
// inserting 
Tinf = 10;// [degree celsius]
// following the same procedure for the other z-planes we obtain
// T21 = (200+T11+T31+T22)/5
// T22 = (100+T12+T32+2*T21)/5
// T31 = (200+T21+T41+T32)/5
// T32 = (100+T22+T42+2*T31)/5
// T41 = (200+T31+T51+T42)/5
// T42 = (100+T32+T52+2*T41)/5
// T51 = (2+0.02*T41+0.01*T52)/0.05
// T52 = (1+0.02*T42+0.02*T51)/0.05
// Solving the 10 equations 
Z = [-0.1 0.01 0.02 0 0 0 0 0 0 0;
     0.02 -0.1 0 0.02 0 0 0 0 0 0;
     1 0 -5 1 1 0 0 0 0 0;
     0 1 2 -5 0 1 0 0 0 0;
     0 0 1 0 -5 1 1 0 0 0;
     0 0 0 1 2 -5 0 1 0 0;
     0 0 0 0 1 0 -5 1 1 0;
     0 0 0 0 0 1 2 -5 0 1;
     0 0 0 0 0 0 0.02 0 -0.05 0.01;
     0 0 0 0 0 0 0 0.02 0.02 -0.05];
C = [-2.5;-1.5;-200;-100;-200;-100;-200;-100;-2;-1];
T = Z^(-1)*C;
T11 = T(1);
T12 = T(2);
T21 = T(3);
T22 = T(4);
T31 = T(5);
T32 = T(6);
T41 = T(7);
T42 = T(8);
T51 = T(9);
T52 = T(10);
printf("the following results for the temperature in each z-plane is ;");
printf("\n\t\t z-plane\t\tNode 1\t\t\tNode 2");
printf("\n\t\t%f\t\t%f\t\t%f",1,T11,T12);
printf("\n\t\t%f\t\t%f\t\t%f",2,T21,T22);
printf("\n\t\t%f\t\t%f\t\t%f",3,T31,T32);
printf("\n\t\t%f\t\t%f\t\t%f",4,T41,T42);
printf("\n\t\t%f\t\t%f\t\t%f",5,T51,T52);
val = [1 2 3 4 5];
val1 = [T11 T21 T31 T41 T51];
val2 = [T12 T22 T32 T42 T52];
plot(val,val1,val,val2);
legend("T11","T22");
xgrid();
xlabel("z-plane");
ylabel("Temperature (degree celsius)");











