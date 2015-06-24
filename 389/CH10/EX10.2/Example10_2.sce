clear;
clc;

// Illustration 10.2
// Page: 497

printf('Illustration 10.2 - Page: 497\n\n');

printf('Illustration 10.2 (a)\n\n');

// solution (a)

//****Data****//
// a:water b:kerosene c:Nicotine
xF = 0.01;// [wt fraction nicotine]
F = 100;// [kg]
B = 150;// [kg]
//******//

// Equilibrium data:
// x_prime = kg nicotine/kg water
// y_prime = kg nicotine/kg kerosene
// Data = [x_prime y_prme]
Data = [0 0;0.001011 0.000807;0.00246 0.001961;0.00502 0.00456;0.00751 0.00686;0.00998 0.00913;0.0204 0.01870];
xF_prime = xF/(1-xF);// kg nicotine/kg water
A = F*(1-xF);// [kg]
AbyB = A/B;
scf(21);
deff('[y] = f64(x)','y = -AbyB*(x-xF)');
x = 0:0.001:0.01;
plot(Data(:,1),Data(:,2),x,f64);
xgrid();
legend("Equilibrium line","Operating Line");
xlabel("kg nicotine / kg water");
ylabel("kg nicotine / kg kerosene");
title("Solution 10.2(a)")
// The operating line and equilibrium line intersect at:
x1_prime = 0.00425;// [kg nicotine/kg water]
y1_prime = 0.00380;// [kg nicotine/kg water]
extract = A*(0.01011-x1_prime);
printf("%f %% of nicotine is extracted.\n\n",extract*100);

printf('Illustration 10.2 (b)\n\n');

// Solution (b)
B = 50;// [kg]
// For each stage:
AbyB = A/B;
deff('[y] = f65(x1)','y = -AbyB*(x1-xF)');
x1 = 0:0.001:0.01;
deff('[y] = f66(x2)','y = -AbyB*(x2-0.007)');
x2 = 0:0.001:0.01;
deff('[y] = f67(x3)','y = -AbyB*(x3-0.005)');
x3 = 0:0.001:0.01;
scf(22);
plot(Data(:,1),Data(:,2),x1,f65,x2,f66,x3,f67);
xgrid();
a=gca();
a.data_bounds=[0 0;0.012 0.010];
legend("Equilibrium line","Operating Line from xF","Operating Line from 0.007","Operating Line from 0.005");
xlabel("kg nicotine / kg water");
ylabel("kg nicotine / kg kerosene");
title("Solution 10.2(b)")
// The final raffinate composition:
x3_prime = 0.0034;// [kg nicotine/kg water]
extract = A*(0.01011-x3_prime);
printf("%f %% of nicotine is extracted.\n",extract*100);