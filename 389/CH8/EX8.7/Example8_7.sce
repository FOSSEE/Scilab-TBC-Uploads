clear;
clc;

// Illustration 8.7
// Page: 312

printf('Illustration 8.7 - Page: 312\n\n');

// solution

// Fom Illustration 8.6:
y1 = 0.02;
y2 = 0.00102;
m = 0.125;
x2 = 0.005;
x1 = 0.1063;

// Number of transfer units:
// Method a:
y1_star = m*x1;
y2_star = m*x2;
yDiffy_star1 = y1-y1_star;
yDiffy_star2 = y2-y2_star;
yDiffy_starm = (yDiffy_star1-yDiffy_star2)/log(yDiffy_star1/yDiffy_star2);
// From Eqn. 8.48:
NtoG = (y1-y2)/yDiffy_starm;
printf("NtoG according to Eqn. 8.48: %f\n",NtoG);

// Mehod b:
// From Illustration 8.3:
A = 1.424;
NtoG = (log((((y1-(m*x2))/(y2-(m*x2)))*(1-(1/A)))+(1/A)))/(1-(1/A));
printf("NtoG according to Eqn. 8.50: %f\n",NtoG);

// Method c:
// Operating Line:
// From Illustration 8.3:
X_prime = [0.00503 0.02 0.04 0.06 0.08 0.10 0.1190];
x_prime = [0.00502 0.01961 0.0385 0.0566 0.0741 0.0909 0.1063]
Y_prime = [0.00102 0.00357 0.00697 0.01036 0.01376 0.01714 0.0204];
y_prime = [0.00102 0.00356 0.00692 0.01025 0.01356 0.01685 0.0200];
deff("[y] = f2(x)","y = m*x")
x = [0:0.01:0.14];
scf(12);
plot(x_prime,y_prime,x,f2);
legend("Operating Line","Equilibrium Line",);
xgrid();
xlabel("mole fraction of benzene in liquid");
ylabel("mole fraction of benzene in gas");
// From graph:
NtoG = 8.7;
printf("NtoG from graph: %f\n",NtoG);

// Method d:
// from Fig 8.10:
Y_star = [0.000625 0.00245 0.00483 0.00712 0.00935 0.01149 0.01347];
ordinate = zeros(7);
for i = 1:7
    ordinate(i) = 1/(Y_prime(i)-Y_star(i));
end
scf(13);
plot(Y_prime,ordinate);
xgrid();
xlabel("Y");
ylabel("1/(Y-Y*)");
title("Graphical Integration");
// Area under the curve:
Ac = 8.63;
// From Eqn. 8.36:
NtoG = Ac+(1/2)*log((1+y2)/(1+y1));
printf("NtoG from graphical integration: %f\n",NtoG);

// Height of transfer units:
NtoG = 9.16;
// From Illustration 6.6:
Fga = 0.0719;// [kmol/cubic m.s]
Fla = 0.01377;// [kmol/cubic m.s]
Gav = 0.0609;// [kmol/square m.s]
L = 1.787*10^(-3);// [kmol/s]
X1 = x1/(1-x1);
X2 = x2/(1-x2);
Area = 0.1746;// [square m]
Lav = L*((1+X1)+(1+X2))/(2*Area);
// From Eqn. 8.24:
Htg = Gav/Fga;// [m]
// From Eqn. 8.31:
Htl = Lav/Fla;// [m]
// since Solutions are dilute:
HtoG = Htg+Htl/A;// [m]
printf("HtoG: %f m\n",HtoG);
Z = HtoG*NtoG;// [m]
printf("The depth of packing recquired is %f m",Z);