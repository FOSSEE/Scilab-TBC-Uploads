clear;
clc;

// Illustration 5.1
// Page: 114

printf('Illustration 5.1 - Page: 114\n\n');

// solution

//***Data***//
// a = NH3, b = H2O
d = 2.54*10^(-2);// [m]
Yag = 0.80;
Xal = 0.05;
T = 273+26.7;// [K]
Kl = 2.87*10^(-5);// [kmol/square m.s.(kmol/cubic m)]
Sh = 40;
Da = 2.297*10^(-5);// [square m.s]
P = 1.0133*10^(5);// [N/square m]
Xbm = 1.0;
//*********//

Ma = 18;// [kg/kmol]
// Liquid:
// Because of large conc. of ammonia in gas F's rather than k's are used.
// Molecular weight of water and ammonia are nearly same.
// The density of the solution is practically that of water.
MolarDensity1 = 1000/Ma;// [kmol/cubic m]
// Kl is determined for dilute soln. where Xbm is practically 1.0
Fl = Kl*Xbm*MolarDensity1;// [kmol/square m.s]
Ma = 18;// [kg-/kmol]
// Gas:
MolarDensity2 = (1/22.41)*(273/(273+26.7));// [kmol/cubic m]
Fg = Sh*MolarDensity2*Da/d;// [kmol/square m.s]

// Mass Transfer Flux
// Th eqb. distribuion data for NH3 from "The Chemical Engineers Handbook" 5th Edt. p3-68:
// Data = [Xa,pa]
// Xa = NH3 mole fraction in gas phas
// pa = NH3 partial pressure in N/square m
Data = [0 0;0.05 7171;0.10 13652;0.25 59917;0.30 93220];
// Ya_star = mole fraction of NH3 in gas phase at eqb.
Ya_star = zeros(5);
for i = 1:5
    Ya_star(i) = (Data(i,2)/P);
end
// For transfer of only one component
Na_by_SummationN = 1.0;
Ya = zeros(5);
for i = 1:5
    Ya(i) = 1-((1-Yag)*(1-Xal)/(1-Data(i)));
end
scf(0);
plot(Data(:,1),Ya_star,Data(:,1),Ya);
xgrid();
xlabel('Xa = mole fraction of NH3 in liquid phase');
ylabel('Ya = mole fraction of NH3 in gas phase');
legend('equilibrium line','operating line');
title('Ya Vs Xa');

// From intersection of operating line & Eqb. line
Xai = 0.274;
Yai = 0.732;

// From Eqn.5.20
Na = Na_by_SummationN*Fg*log((Na_by_SummationN-Yai)/(Na_by_SummationN-Yag));// [kmol NH3 absorbed/square m.s]
printf("Local mass transfer flux for ammonia is %e kmol/square m.s",Na);