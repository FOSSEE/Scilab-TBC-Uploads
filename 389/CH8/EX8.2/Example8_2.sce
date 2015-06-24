clear;
clc;

// Illustration 8.2
// Page: 286

printf('Illustration 8.2 - Page: 286\n\n');

// solution

//****Data****//
// Absorber:
G = 0.250;// [cubic m/s]
Temp1 = 273+26;// [K]
Pt = 1.07*10^(5);// [N/square m]
y1 = 0.02;
x2 = 0.005;
//******//

G1 = G*(273/Temp1)*(Pt/(1.0133*10^(5)))*(1/22.41);// [kmol/s]
Y1 = y1/(1-y1);// [kmol benzene/kmol dry gas]
Gs = G1*(1-y1);// [kmol dry gas/s]
// For 95% removal of benzene:
Y2 = Y1*0.05;
X2 = x2/(1-x2);// [kmol benzene/kmol oil]
// Vapour pressure of benzene:

P_star = 13330;// [N/square m]
X_star = zeros(20);
Y_star = zeros(20);
j = 0;
for i = 0.01:0.01:0.20
    j = j+1;
    x = i;
    X_star(j) = i;
    deff('[Y] = f27(y)','Y = (y/(1+y))-(P_star/Pt)*(x/(1+x))');
    Y_star(j) = fsolve(0,f27);
end
// For min flow rate:
X1 = 0.176;// [kmolbenzene/kmol oil]
DataMinFlow = [X2 Y2;X1 Y1];
scf(6);
plot(X_star,Y_star,DataMinFlow(:,1),DataMinFlow(:,2));
minLs = (Gs*(Y1-Y2)/(X1-X2));// [kmol/s]
// For 1.5 times the minimum:
Ls = 1.5*minLs;// [kmol/s]
X1_prime = (Gs*(Y1-Y2)/Ls)+X2;// [kmol benzene/kmol oil]
DataOperLine = [X2 Y2;X1_prime Y1];
plot(X_star,Y_star,DataMinFlow(:,1),DataMinFlow(:,2),DataOperLine(:,1),DataOperLine(:,2));
xgrid();
xlabel("moles of benzene / mole wash oil");
ylabel("moles benzene / mole dry gas");
legend("Equlibrium Line","Min Flow Rate Line","Operating Line");
title("Absorption")
printf("The Oil circulation rate is %e kmol/s\n",Ls);

// Stripping
Temp2 = 122+273;// [K]
// Vapour pressure at 122 OC
P_star = 319.9;// [kN/square m]
Pt = 101.33;// [kN/square m]
X_star = zeros(7);
Y_star = zeros(7);
j = 0;
for i = 0:0.1:0.6
    j = j+1;
    x = i;
    X_star(j) = i;
    deff('[Y] = f28(y)','Y = (y/(1+y))-(P_star/Pt)*(x/(1+x))');
    Y_star(j) = fsolve(0,f28);
end
X1 = X2;// [kmol benzene/kmol oil]
X2 = X1_prime;// [kmol benzene/kmol oil]
Y1 = 0;// [kmol benzene/kmol steam]
// For min. steam rate:
Y2 = 0.45;
DataMinFlow = [X2 Y2;X1 Y1];
minGs = Ls*(X2-X1)/(Y2-Y1);// [kmol steam/s]
slopeOperat = 1.5*(Y2-Y1)/(X2-X1);
deff('[y] = f29(x)','y = slopeOperat*(x-X1)+Y1');
x = 0:0.01:0.14;
scf(7);
plot(Y_star,X_star,DataMinFlow(:,1),DataMinFlow(:,2),x,f29);
xgrid();
xlabel("moles of benzene / mole wash oil");
ylabel("moles benzene / mole dry gas");
legend("Equlibrium Line","Min Flow Rate Line","Operating Line");
title("Stripping");
printf("The Steam circulation rate is %e kmol/s\n",1.5*minGs);
