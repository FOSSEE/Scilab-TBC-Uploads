clear;
clc;

// Illustration 8.3
// Page: 292

printf('Illustration 8.3 - Page: 292\n\n');

// solution

// Since tower is a tray device:
// Following changes in notation is made:
// L1 to LNp
// L2 to L0
// X1 to XNp
// X2 to X0
// G1 to GNpPlus1
// G2 to G1
// Y1 to YNpPlus1
// Y2 to Y1
// x1 to xNp
// x2 to x0
// y1 to yNpPlus1
// y2 to y1
// From Illustration 8.2:
yNpPlus1 = 0.02;
Y1 = 0.00102;
y1 = Y1/(1+Y1);
GNpPlus1 = 0.01075;// [kmol/s]
x0 = 0.005;
m = 0.125;// [m = y_star/x]
Ls = 1.787*10^(-3);// [kmol/s]
Gs = 0.01051;// [kmol/s]
XNp = 0.1190;
LNp = Ls*(1+XNp);// [kmol/s]
ANp = LNp/(m*GNpPlus1);
X0 = x0/(1-x0);
L0 = Ls*(1+X0);// [kmol/s]
G1 = Gs*(1+Y1);// [kmol/s]
A1 = L0/(m*G1);
A = (ANp*A1)^0.5;
// From Eqn. 5.55:
Np = (log((yNpPlus1-(m*x0))/(y1-(m*x0))*(1-(1/A))+(1/A)))/log(A);
printf("Absorber\n");
printf("From Analytical Method, no. of theoretical trays required is %f \n",Np);
// From Fig. 8.13 (Pg292):
Np = 7.6;
printf("From Graphical Method, no. of theoretical trays required is %f \n",Np);

// Stripper
SNp = 1/ANp;
S1 = 1/A1;
// Due to relative nonconstancy of the stripping factor,graphical method should be used.
printf("Stripper\n");
// From Fig. 8.11 (Pg 289):
Np = 6.7;
printf("From Graphical Method, no. of theoretical trays required is %f \n",Np);
// From Fig. 5.16 (Pg 129):
Np = 6.0;
printf("From Fig. 5.16, no. of theoretical trays required is %f \n",Np);