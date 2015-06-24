clear;
clc;

// Illustration 7.11
// Page: 249

printf('Illustration 7.11 - Page: 249\n\n');

// solution

//****Data****//
L_min = 2.27;// [kg/square m.s]
G_min = 2;// [kg/square m.s]
L2_prime = 15;// [kg/s]
Q = 270;// [W]
Templ2 = 45;// [OC]
Tempg1 = 30;// [OC]
Tempw1 = 24;// [OC]
Kya = 0.90;// [kg/cubic m.s]
//*******//

H1_prime = 72;// [kJ/kg dry air]
Y1_prime = 0.0160;// [kg water/kg dry air]
Templ1 = 29;// [OC]
Cal = 4.187;// [kJ/kg]
// Equilibrium Data:
// Data  = [Temp.(OC),H_star(kJ/kg)]
Data_star = [29 100;32.5 114;35 129.8;37.5 147;40 166.8;42.5 191;45 216];
// The operating line for least slope:
H2_star = 209.5;// [kJ/kg]
Data_minSlope = [Templ1 H1_prime;Templ2 H2_star];
deff('[y] = f14(Gmin)','y = ((L2_prime*Cal)/Gmin)-((H2_star-H1_prime)/(Templ2-Templ1))');
Gmin = fsolve(2,f14);// [kg/s]
Gs = 1.5*Gmin;// [kg/s]
// For the Operating Line:
y = deff('[y] = f15(H2)','y = ((H2-H1_prime)/(Templ2-Templ1))-((L2_prime*Cal)/Gs)');
H2 = fsolve(2,f15);// [kJ/kg dry air]
Data_opline = [Templ1 H1_prime;Templ2 H2];
scf(4);
plot(Data_star(:,1),Data_star(:,2),Data_minSlope(:,1),Data_minSlope(:,2),Data_opline(:,1),Data_opline(:,2));
xgrid();
legend('Equilibrium line','Minimum Flow Rate Line','Operating Line');
xlabel("Liquid Temperature, 0C");
ylabel("Enthalphy Of Air Water vapour, kJ / kg dry air");
// Tower cross section Area:
Al = L2_prime/L_min;// [square m]
Ag = Gs/G_min;// [square m]
A = min(Al,Ag);// [square m]
// Data from operating line:
// Data1 = [Temp.(OC),H_prime(kJ/kg)]
Data1 = [29 72;32.5 92;35 106.5;37.5 121;40 135.5;42.5 149.5;45 163.5];
// Driving Force:
Data2 = zeros(7,2);
// Data2 = [Temp[OC],driving Force]
for i = 1:7
    Data2(i,1) = Data1(i,1);
    Data2(i,2) = 10^2/(Data_star(i,2)-Data1(i,2));
end
// The data for operating line as abcissa is plotted against driving force;
Area = 3.25;
// From Eqn. 7.54
deff('[y] = f16(Z)','y = Area-(Kya*Z/G_min)');
Z = fsolve(2,f16);
printf("The height of tower is %f m\n",Z);
NtoG = 3.25;
HtoG = G_min/Kya;// [m]

// Make up water
// Assuming the outlet air is essentially saturated:
Y2_prime = 0.0475;// [kg water/kg dry air]
E = G_min*(A)*(Y2_prime-Y1_prime);// [kg/s]
// Windage loss estimated as 0.2 percent
W = 0.002*L2_prime;// [kg/s]
ppm_blowdown = 2000;// [ppm]
ppm_makeup = 500;// [ppm]
// Since the weight fraction are proportional to the corresponding ppm values:
B = (E*ppm_makeup/(ppm_blowdown-ppm_makeup))-W;// [kg/s]
M = B+E+W;// [kg/s]
printf("The makeup water is estimated to be %f kg/s\n",M);