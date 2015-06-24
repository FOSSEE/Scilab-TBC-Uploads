clear;
clc;
printf("\t\t\tExample Number 3.11\n\n\n");
// use of variable mesh size
// Example 3.11 (page no.-108-110)
// solution

// using data given in figure example 3-11(page no.-109)
// nodes 5,6,8, and 9 are internal nodes with dx = dy and have nodal equations in the form of equation(3-24). Thus,
// 600+T6+T8-4*T5 = 0
// 500+T5+T7+T9-4*T6 = 0
// 100+T5+T9+T11-4*T8 = 0
// T8+T6+T10+T12-4*T9 = 0
// For node 7 we can use a resistance formulation and obtain 
// (1/R_7_6) = k
// (1/R_7_500_degree) = k*(dx/6+dx/2)/(dy/3) = 2*k
// (1/R_7_10) = 2*k
// and we find
// 1000+T6+2*T10-5*T7 = 0
// similar resistance are obtained for node 10
// (1/R_10_9) = k
// (1/R_10_7) = 2*k = (1/R_10_1)
// so that 
// 2*T7+T9+2*T1-5*T10 = 0
// for node 1,
// (1/R_1_12) = k*(dy/6+dy/2)/(dx/3) = 2*k
// (1/R_1_3) = k*(dx/6+dx/2)/(dy) = 2*k/3
// (1/R_1_10) = 2*k
// and the nodal equation becomes 
// 3*T12+3*T10+T3-7*T1 = 0
// for node 11,
// (1/R_11_100_degree) = (1/R_11_12) = k*(dy/6+dy/2)/(dx/3) = 2*k
// (1/R_11_8) = k
// (1/R_11_13) = k*(dx/3)/dy = k/3
// and the nodal equation becomes
// 600+6*T12+3*T8+T13-16*T11 = 0
// Similarly, the equation for node 12 is 
// 3*T9+6*T11+6*T1+T14-16*T12 = 0
// for node 13,
// (1/R_13_100_degree) = k*(dy)/(dx/3) = 3*k = 1/R_13_14
// (1/R_13_11) = (1/R_13_100) = k/3
// and we obtain
// 1000+9*T14+T11-20*T13 = 0
// similarly for node 14,
// 100+9*T13+9*T3+T12-20*T14 = 0
// finally, from resistances already found, the nodal equation for node 3 is 
// 200+9*T14+2*T1-13*T3 = 0
// we choose to solve the set of equations by the gauss-seidel iteration technique
A=[1 -1 0 0 0 0 0 0 0 0 0 0 0 0;0 0 1 -1 0 0 0 0 0 0 0 0 0 0;0 0 0 0 -4 1 0 1 0 0 0 0 0 0;0 0 0 0 1 -4 1 0 1 0 0 0 0 0;0 0 0 0 1 0 0 -4 1 0 1 0 0 0;0 0 0 0 0 1 0 1 -4 1 0 1 0 0;0 0 0 0 0 1 -5 0 0 2 0 0 0 0;2 0 0 0 0 0 2 0 1 -5 0 0 0 0;-7 0 1 0 0 0 0 0 0 3 0 3 0 0;0 0 0 0 0 0 0 3 0 0 -16 6 1 0;6 0 0 0 0 0 0 0 3 0 6 -16 0 1;0 0 0 0 0 0 0 0 0 0 1 0 -20 9;0 0 9 0 0 0 0 0 0 0 0 1 9 -20;2 0 -13 0 0 0 0 0 0 0 0 0 0 9];
b=[0;0;-600;-500;-100;0;-1000;0;0;-600;0;-1000;-100;-200];
T = A^(-1)*b;
printf("Nodal temperatures for node(1,2,3,4,5,6,7,8,9,10,11,12,13,14) are respectively as follows in degree celsius");
disp(T);

