clear;
clc;

// Illustration 2.4
// Page: 99

printf('Illustration 2.4 -  Page: 99\n\n');

// solution
// Mass Transfer into a Dilute Stream Flowing Under Forced Convection in a Circular Conduit

n = 6; // [number of variables]
//   Variables                Symbols        Dimensions
// Tube diameter                 D             L
// Fluid density                 row           M/L^3 
// Fluid viscosity               u             M/(Lt)
// Fluid velocity                v             L/t
// Mass diffusivity              D_AB          L^2/t
// Mass-transfer coefficient     kc            L/t

// To determine the number of dimensionless parameters to be formed, we must know the rank, r, of the dimensional matrix.
// The dimensional matrix is 
DM = [0,0,1,1,0,0;1,1,-3,-1,2,1;-1,-1,0,0,-1,-1];
[E,Q,Z ,stair ,rk]=ereduc(DM,1.d-15);
printf("Rank of matrix is %f\n\n",rk);

//The numbers in the table represent the exponent of M, L, and t in the dimensional expression of each of the six variables involved. For example, the dimensional expression of p is M/Lt; hence the exponents are 1, -1, and -1

// From equation 2.16
i = n-rk; // [number of dimensional groups]
// Let the dimensional groups are pi1, pi2 and pi3
// Therefore pi1 = (D_AB)^a*(row)^b*(D)^c*kc
//           pi2 = (D_AB)^d*(row)^e*(D)^f*v
//           pi3 = (D_AB)^g*(row)^h*(D)^i*u

// Solving for pi1
// M^0*L^0*t^0 = 1 = (L^2/t)^a*(M/L^3)^b*(L)^c*(L/t)

// Solution of simultaneous equation
function[f]=F(e)
    f(1) = 2*e(1)-3*e(2)+e(3)+1;
    f(2) = -e(1)-1;
    f(3) = -e(2);
    funcprot(0);
endfunction

// Initial guess:
e = [0.1 0.8 0.5];
y = fsolve(e,F);
a = y(1);
b = y(2);
c = y(3);
printf("The coefficients of pi1 are %f %f %f\n\n",a,b,c);
// Similarly the coefficients of pi2 and pi3 are calculated
// Therefore we get pi1 = kc*D/D_AB = Sh i.e. Sherwood Number
//                  pi2 = v*D/D_AB = P_ed i.e. Peclet Number
//                  pi3 = u/(row*D_AB) = Sc i.e. Schmidt Number

// Dividing pi2 by pi3 gives
//       pi2/pi3 = D*v*row/u = Re i.e. Renoylds number

printf('The result of the dimensional analysis of forced-convection mass transfer in a circular conduit indicates that a correlating relation could be of the form\n Sh = function(Re,Sc)\n which is analogous to the heat transfer correlation \n Nu = function(Re,Pr)');