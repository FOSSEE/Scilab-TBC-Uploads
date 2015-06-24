clear;
clc;

// Illustration 8.6
// Page: 304

printf('Illustration 8.6 - Page: 304\n\n');

// solution

//****Data****// 
// Gas:
// In:
y_prime1 = 0.02;
Y_prime1 = 0.0204;// [mol/mol dry gas]
// Out:
y_prime2 = 0.00102;
Y_prime2 = 0.00102;// [mol/mol dry gas]
// Non absorbed gas:
MavG = 11;// [kg/kmol]
G = 0.01051;// [kmol/s nonbenzene]
Gm = 0.01075;// [kmol/s]
T = 26;// [OC]
viscosity_G = 10^(-5);// [kg/m.s]
DaG = 1.30*10^(-5);// [square m/s]

// Liquid:
// In:
x_prime2 = 0.005;
X_prime2 = 0.00503;// [mol benzene/mol oil]
// Out:
x_prime1 = 0.1063;
X_prime1 = 0.1190;// [mol benzene/mol oil]
// Benzene free oil:
MavL = 260;// [kg/kmol]
viscosity_L = 2*10^(-3);// [kg/kmol]
Density_L = 840;// [kg/cubic cm]
L = 1.787*10^(-3);// [kmol/s]
DaL = 4.77*10^(-10);// [square m/s]
sigma = 0.03;// [N/square m]
m = 0.1250;
//*******//

A = 0.47^2*%pi/4;// [square m]
// At the bottom:
L_prime1 = ((L*MavL)+(X_prime1*L*78))/A;// [kg/square m.s]
// At the top
L_prime2 = ((L*MavL)+(X_prime2*L*78))/A;// [kg/square m.s]
L_primeav = (L_prime1+L_prime2)/2;// [kg/square m.s]
// At the bottom
G_prime1 = ((G*MavG)+(Y_prime1*G*78))/A;// [kg/square m.s]
// At the top
G_prime2 = ((G*MavG)+(Y_prime2*G*78))/A;// [kg/square m.s]
G_primeav = (G_prime1+G_prime2)/2;// [kg/square m.s]

// From Illustration 6.6:
Fga = 0.0719;// [kmol/cubic cm.s]
Fla = 0.01377;// [kmol/cubic cm.s]
// Operating Line:
X_prime = [0.00503 0.02 0.04 0.06 0.08 0.10 0.1190];
x_prime = zeros(7);
Y_prime = zeros(7);
y_prime = zeros(7);
for i = 1:7
    x_prime(i) = X_prime(i)/(1+X_prime(i));
    deff('[y] = f38(Y_prime)','y = (G*(Y_prime1-Y_prime))-(L*(X_prime1-X_prime(i)))');
    Y_prime(i) = fsolve(Y_prime1,f38);
    y_prime(i) = Y_prime(i)/(1+Y_prime(i));
end
deff("[y] = f39(x)","y = m*x")
x = [0:0.01:0.14];

// Interface compositions are determined graphically and according to Eqn. 8.21:
yi = [0.000784 0.00285 0.00562 0.00830 0.01090 0.01337 0.01580];
ylog = zeros(7);
y_by_yDiffyi = zeros(7);
for i = 1:7
    ylog(i) = log10(yi(i));
    y_by_yDiffyi(i) = y_prime(i)/(y_prime(i)-yi(i));
end
scf(10);
plot(x_prime,y_prime,x,f39,x_prime,yi);
legend("Operating Line","Equilibrium Line","Interface Composition");
xgrid();
xlabel("mole fraction of benzene in liquid");
ylabel("mole fraction of benzene in gas");
scf(11);
plot(ylog,y_by_yDiffyi);
xgrid();
xlabel("log y");
ylabel("y/(y-yi)");
title("Graphical Integration Curve");
// Area under the curve:
Ac = 6.556;
// Eqn. 8.28:
NtG = (2.303*Ac)+1.152*(log10((1-y_prime2)/(1-y_prime1)));
Gav = (Gm+(G/(1-Y_prime2)))/(2*A);// [kmol/square m.s]
HtG = Gav/Fga;// [m]
Z = HtG*NtG;// [m]
printf("The depth of packing recquired is %f m",Z);