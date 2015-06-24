clear;
clc;

// Illustration 5.2
// Page: 130

printf('Illustration 5.2 - Page: 130\n\n');

// solution

//****Data***//
// Eqb. data
// Data = [Wt% of moisture in the soap,Partial pressure of water in air(mm Hg)]
Data = [0 0;2.40 9.66;3.76 19.20;4.76 28.4;6.10 37.2;7.83 46.4;9.90 55.0; 12.63 63.2;15.40 71.9;19.02 79.5];
P = 760;// [mm Hg]
// Initial air
p1 = 12;// [mm Hg]
T = 273+75;// [K]
//******//

// Y = kg water/kg dry air
// X = kg water/kg dry soap
// E = Air water phase
// R = Soap water phase
Y = zeros(10);
X = zeros(10);
for i = 1:10
    Y(i) = Data(i,2)/(P-Data(i,2))*(18.02/29);
    X(i) = Data(i,1)/(100-Data(i,1));
end

printf('Illustration 5.2 (a)\n\n');

// Soln. (a)
// First operation
Y1 = p1/(P-p1);// [kg water/kg dry soap]
// Initial Soap
S1 = 16.7/(100-16.7);// [kg water/kg dry soap]
// Final soap
S2 = 13/(100-13);// [kg water/kg dry soap]
Rs = 10*(1-0.167);// [kg dry soap]
// Using ideal gas law
Es = 10*((760-p1)/760)*(273/T)*(29/22.41);// [kg dry air]
slopeOperat = -Rs/Es;

deff("[y] = f2(x)","y = slopeOperat*(x-S1)+Y1")
x = S1:-0.01:S2;

// Second Operation
X1 = S2;
scf(1);
deff("[y] = f3(S)","y = slopeOperat*(S-X1)+Y1");
S = 0:0.01:S1;
plot(X,Y,x,f2,S,f3);
xlabel('kg water / kg dry soap');
ylabel('kg water / kg dry air');
legend('Equilibrium line','First Process','Second Process');
a = get("current_axes");
tight_limits = "on";
a.data_bounds = [0 0;0.24 0.08];
xgrid();
title("Illustration 5.2(a)")
// Results for First Process
// The condition at abcissa S2 correspond to the end of first operation
printf("Conditions corresponding to First Operation \n")
printf("X = %f kg water/kg dry soap\n",S2);
printf("Y = %f kg water/kg dry air\n",f2(S2));

// Results for Second Process
//  The point at which the line meets the equilibrium line corresponds to the final value
X2 = 0.103;
Y2 = (X2/(1+X2));
printf("Final moisture content of soap is %f %%\n\n",Y2*100);

printf('Illustration 5.2 (b)\n\n');

// Solution (b)

Rs = 1*(1-0.167);// [kg dry soap/h]
// Entering soap
X1 = 0.20;// [kg water/kg dry soap]
// Leaving soap
x = 0.04;
X2 = x/(1-x);// [kg water/kg dry soap]
// Entering air
Y2 = 0.00996;// [from Illustration 5.2(a), kg water/kg dry air]
// The operating line of least slope giving rise to eqb. condition will indicate least amount of air usable.
// At X1 = 0.20; the eqb. condition:
Y1 = 0.0675;// [kg water/kg dry air]
scf(2);
deff('[y] = f4(x)','y = ((Y1-Y2)/(X1-X2))*(x-X1)+Y1');
x = X2:0.01:0.24;
plot(X,Y,x,f4);
xlabel('kg water / kg dry soap');
ylabel('kg water / kg dry air');
a = get("current_axes");
tight_limits = "on";
a.data_bounds = [0 0;0.24 0.08];
xgrid();
title("Illustration 5.2(b)")
legend("Equilibrium line","Operating Line");
// By Eqn. 5.35
Es = Rs*(X1-X2)/(Y1-Y2);// [kg dry air/h]
Esv = (Es/29)*22.41*(P/(P-p1))*(T/273);// [cubic m/kg dry soap]
printf("Minimum amount of air required is %f cubic m/kg dry soap\n\n",Esv);

printf('Illustration 5.2 (c)\n\n');

// solution (c)

Esnew = 1.30*Es;// [kg dry air/h]
Y1 = Rs*((X1-X2)/Esnew)+Y2;
scf(3);
deff('[y] = f5(x)','y = ((Y1-Y2)/(X1-X2))*(x-X1)+Y1');
x = X2:0.01:0.24;
plot(X,Y,x,f5);
xlabel('kg water / kg dry soap');
ylabel('kg water / kg dry air');
a = get("current_axes");
tight_limits = "on";
a.data_bounds = [0 0;0.24 0.08];
xgrid();
title("Illustration 5.2(c)")
legend("Equilibrium line","Operating Line");
// with final coordinates X = X1 & y = Y1
// From figure, Total number of eqb . stages = 3
N = 3;
printf("Moisture content of air leaving the drier is %f kg water/kg dry air\n",Y1);
printf("Total number of eqb. stages = %d\n",N);