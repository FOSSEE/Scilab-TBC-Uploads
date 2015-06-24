clear;
clc;

// Illustration 8.7
// Page: 493

printf('Illustration 8.7 -  Page: 493\n\n');


// solution

//****Data****//
L_min = 2.27;// [kg/square m.s]
G_min = 2;// [kg/square m.s]
L2_prime = 15;// [kg/s]
Templ2 = 318;// [K]
Tempg1 = 303;// [Entering air dry bulb, K]
Tempw1 = 297;// [ Entering air wet bulb, K]
Kya = 0.90;// [kg/cubic m.s]
//*******//

H1_prime = 72.5;// [kJ/kg dry air]
Y1_prime = 0.0190;// [kg water/kg dry air]
Templ1 = 302;// [K]
Cal = 4.187;// [kJ/kg]

// Equilibrium Data:
// Data  = [Temp.(K),H_star(kJ/kg)]
Data_star = [302 100;305.5 114;308 129.8;310.5 147;313 166.8;315.5 191;318 216];

// The operating line for least slope:
H2_star = 210;// [kJ/kg]
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
xlabel("Liquid Temperature, K");
ylabel("Enthalphy Of Air Water vapour, kJ / kg dry air");

// Tower cross section Area:
Al = L2_prime/L_min;// [square m]
Ag = Gs/G_min;// [square m]
A = min(Al,Ag);// [square m]
printf("Cross sectional is %f square m\n",A);

// Data from operating line:
// Data1 = [Temp.(K),H_prime(kJ/kg)]
Data1 = [302 72.5;305.5 92;308 106.5;310.5 121;313 135.5;315.5 149.5;318 164.2];

// Driving Force:
Data2 = zeros(7,2);
// Data2 = [Temp[K],driving Force]
for i = 1:7
    Data2(i,1) = Data1(i,1);
    Data2(i,2) = 1/(Data_star(i,2)-Data1(i,2));
end

// The data for operating line as abcissa is plotted against driving force;
Area = 3.28;
// From Eqn. 7.54
deff('[y] = f16(Z)','y = Area-(Kya*Z/G_min)');
Z = fsolve(2,f16);
printf("The height of tower is %f m\n",Z);
NtoG = 3.28;
HtoG = G_min/Kya;// [m]

// Make up water
// Assuming the outlet air is essentially saturated:
Y2_prime = 0.048;// [kg water/kg dry air]
H2 = 164.2; // [kJ/kg dry air]
// This corresponds to an exit-air temperature of 312.8 K

// Approximate rate of evaporation 
R = Gs*(Y2_prime-Y1_prime);
printf("Rate of evaporation is %f kg/s\n",R); 