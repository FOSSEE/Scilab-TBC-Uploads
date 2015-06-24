

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 3 Example # 3.1 ")

//Cross section of the element in m is given as
b = 0.1; //breadth in m
H = 0.01; //height in m
//Temperature of surrrounding oil in C is given as
Tinfinity = 80;
//Correspoding heat transfer coefficient in W/m2-K is given as:
h = 42;
//Heat generation rate is given in W/m3 as
qg = 10^6;
//Temperature below which element needed to maintain in C is
T = 200;
// Thermal conductivity of iron in W/m-K is taken as
k = 64;

//Because of symmetry we need to consider only half of the thickness of the heating element
L = H/2; //Length in m
//We are defining five nodes at a distance of (i-1)*dx, where i=1,2,3,4,5
N = 5; //Total number of grid points
dx = L/(N-1); //dx in m
//Since no heat flows across the top face, it corresponds to a zero-heat
//flux boundary condition.
//Applying Eq. (2.1) to a control volume extending from x=L-dx/2 to x=L
//We get TN=TN-1 +qg*dx*dx/(2*k)

//At the left face, , we have a surface convection boundary condition to which Eq. (3.7) can be applied
//Determining all the matrix coefficients in Eq. (3.11)
a1 = 1; //Matrix coefficient a1 in SI units
b1 = 1/(1+(h*dx)/k); //Matrix coefficient b1 in SI units
c1 = 0; //Matrix coefficient c1 in SI units
d1 = (dx/k)*((h*Tinfinity+(qg*dx)/2)/(1+(h*dx)/k)); //Matrix coefficient d1 in SI units
a2 = 2;a3 = a2;a4 = a3;//Matrix coefficient a2 in SI units
b2 = 1;b3 = b2;b4 = b3;//Matrix coefficient b2 in SI units
c2 = 1;c3 = c2;c4 = c3;//Matrix coefficient c2 in SI units
d2 = ((dx*dx)*qg)/k;d3 = d2;d4 = d2;//Matrix coefficient d2 in SI units
a5 = 1;b5 = 0;c5 = 1;d5 = ((dx*dx)*qg)/(2*k);//Matrix coefficient a5 in SI units

//Using the algorithm given in Appendix 3 for solving the tridiagonal system, we find the temperature distribution given as:
disp("Final temperature distribution in C is the following")
//From equation 3.11
//Matrix A in the Appendix 3
A = [a1,-b1,0,0,0;
     -c2,a2,-b2,0,0;
     0,-c3,a3,-b3,0;
     0,0,-c4,a4,-b4;
     0,0,0,-c5,a5];
//Matrix D in the Appendix 3
D = [d1;d2;d3;d4;d5];
//Temperature matrix where temp are in degree C as given by appnedix 3
T = (A^(-1))*D
