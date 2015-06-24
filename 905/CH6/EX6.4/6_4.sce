clear;
clc;

// Illustration 6.4
// Page: 342

printf('Illustration 6.4 -  Page: 342\n\n');

// solution
//*****Data*****//
T = 298; // [K]
Fa = 200; // [feed, kmole/hr]
zf = 0.6;
yd = 0.95; xd = yd;
xw = 0.05;
q = 0.5; // [Lf/F]
//*****//

printf('Illustration 6.4(a) -  Page: 342\n\n');
// Solution (a)

// Solution of simultaneous equation 
function[f]=F(e)
    f(1) = Fa - e(1)-e(2);
    f(2) = zf*Fa - yd*e(1) - xw*e(2);
    funcprot(0);
endfunction

// Initial guess
e = [120 70];
y = fsolve(e,F);
D = y(1);
W = y(2);
printf("Quantity of liquid and vapor products are %f kmole/h and %f kmole/h respectively\n\n",D,W);


printf('Illustration 6.4(b) -  Page: 342\n\n');
// Solution(b)
// VLE data is generated in the same manner as generated in Example 6.1 by applying Raoult's law
// VLE_data = [T,x,y]
VLE_data = [379.4 0.1 0.21;375.5 0.2 0.37;371.7 0.3 0.51;368.4 0.4 0.64;365.1 0.5 0.71;362.6 0.6 0.79;359.8 0.7 0.86;357.7 0.8 0.91;355.3 0.9 0.96];
// From figure 6.14
// The minimum number of equilibrium stages is stepped off between the equilibrium curve and the 45 degree Iine, starting from the top, giving
Nmin = 6.7;
printf("The minimum number of theoretical stages is %f\n\n",Nmin);

printf('Illustration 6.4(c) -  Page: 342\n\n');
// Solution(c)
// Slope of q-line = Lf/F/(1-(Lf/F))
s = q/(1-q);
// For minimum reflux ratio
// From figure 6.12 y-intercept is
i = 0.457;
// Therefore Rmin is
Rmin = xd/i -1;
printf("The minimum reflux ratio is %f mole reflux/mole distillate\n\n",Rmin);

printf('Illustration 6.4(d) -  Page: 343\n\n');
// Solution(d)
R = 1.3*Rmin;
// The y-intercept of the rectifying-section operating line is
ia = xd/(R+1);
// The operating line for the stripping section is drawn to pass through the point x = y = xw = 0.05 on the 45" line and the point of intersection of the q-line   // and the rectifying-section operating line.
// Therefore from figure 6.15 
Nact = 13;
// But it include boiler
Nact1 = Nact-1;
printf("The number of equilibrium stages for the reflux ratio specified is %f\n",Nact1);
// For the optimal feed-stage location, the transition from one operating line to the other occurs at the first opportunity
// after passing the operating-line intersection 
// Therefore from figure 6.15 shows that 
printf("The optimal location of the feed stage for the reflux ratio specified is sixth from the top\n\n");

printf('Illustration 6.4(e) -  Page: 344\n\n');
// Solution(e)
L = R*D; // [kmole/h]
V = L+D; // [kmole/h]
// From equation 6.27
Lst = L+q*Fa; // [kmole/h]
// From equation 6.28
Vst = V+(q-1)*Fa; // [kmole/h]

// For 50% vaporization of the feed ( zf = 0.60), from calculations similar to those illustrated in Example 6.1, the separator temperature and the equilibrium     // compositions are
Tf = 365.5; // [K]
yf = 0.707;
xf = 0.493;

// Latent heat vaporisation data at temperature T = 298 K
lambdaA = 33.9; // [kJ/mole]
lambdaB = 38; // [kJ/mole]
// Heat capacities of liquids (298-366 K)
Cla = 0.147; // [kJ/mole.K]
Clb = 0.174; // [kJ/mole.K]
// Heat capacities of gases, average in the range 298 to 366 K
Cpa = 0.094; // [kJ/mole.K]
Cpb = 0.118; // [kJ/mole.K]
// Substituting in equation 6.6 gives
Hf = 0;
Hlf = (Tf-T)*(xf*Cla+(1-xf)*Clb); // [kJ/mole of liquid feed]
// From equation 6.7
Hvf = (Tf-T)*(yf*Cpa+(1-yf)*Cpb) + yf*lambdaA + (1-yf)*lambdaB; // [kJ/mole of vapor feed]

Lf = Fa*q; // [kmole/h]
Vf = Fa*(1-q); // [kmole/h]
// From equation 6.3
Qf = (Hvf*Vf +Hlf*Lf-Fa*Hf)*1000/3600; // [kW]


Tlo = 354.3; // [Bubble point temperature, K]
T1 = 355.8; // [Dew point temperature, K]
y1 = 0.95; // [composition of saturated vapor at dew point]
x0 = 0.95; // [composition of saturated liquid at bubble point]
Hv1 = (T1-T)*(y1*Cpa+(1-y1)*Cpb) + y1*lambdaA + (1-y1)*lambdaB; // [kJ/mole of vapor feed]
Hlo = (Tlo-T)*(x0*Cla+(1-x0)*Clb); // [kJ/mole of liquid feed]

// An energy balance around condenser
Qc = V*(Hv1-Hlo)*1000/3600; // [kW]

// A flash-vaporization calculation is done in which the fraction vaporized is known (53.8/75.4 = 0.714) and the concentration
// of the liquid residue is fixed at xw = 0.05
// The calculations yield
Tr = 381.6; // [K]
x12 = 0.093;
y13 = 0.111;
T12 = 379.7; // [Bubble point of the liquid entering in the reboiler, K]

Hl12 = (T12-T)*(x12*Cla+(1-x12)*Clb); // [kJ/mole of liquid feed]
Hv13 = (Tr-T)*(y13*Cpa+(1-y13)*Cpb) + y13*lambdaA + (1-y13)*lambdaB; // [kJ/mole of vapor feed]

Hlw = (Tr-T)*(xw*Cla+(1-xw)*Clb); // [kJ/mole of liquid feed]

// An energy balance around the reboiler 
Qr = (Vst*Hv13+W*Hlw-Lst*Hl12)*1000/3600; // [kW]
printf("The thermal load of the condenser, reboiler, and feed preheater are %f kW,  %f kW and %f kW respectively\n\n",Qc,Qr,Qf);