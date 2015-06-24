clear;
clc;

// Illustration 10.4
// Page: 506

printf('Illustration 10.4 - Page: 506\n\n');

// Solution

//****Data****//
// a:water b:kerosene c:Nicotine
F = 1000;// [kg/h]
xF = 0.01;// [wt. fraction acetic acid]
//*******//

// Equilibrium data:
// x_prime = kg nicotine/kg water
// y_prime = kg nicotine/kg kerosene
// Eqb = [x_prime y_prme]
Eqb = [0 0;0.001011 0.000807;0.00246 0.001961;0.00502 0.00456;0.00751 0.00686;0.00998 0.00913;0.0204 0.01870];

// Solution (a)

A = 1000*(1-xF);// [kg water/h]
yS = 0;
yS_prime = 0;
y1_prime = 0;
xF_prime = xF/(1-xF);// [kg nicotine/kg water]
// For xF_prime = 0.0101:
yk = 0.0093;
xNp = 0.001;// [wt. fraction acetic acid]
xNp_prime = xNp/(1-xNp);// [kg nicotine/kg water]
// For infinite stages:
// Operating Line should pass through (xNp_prime,y1_prime) & (xF_prime,yk)
Operat = [xNp_prime y1_prime;xF_prime yk];
scf(24);
plot(Eqb(:,1),Eqb(:,2),Operat(:,1),Operat(:,2));
xgrid();
legend("equilibrium Line","Operating Line");
xlabel("kg nicotine / kg water");
ylabel("kg nicotine / kg kerosene");
title("Solution 10.4(a)")
a = gca();
a.data_bounds = [0 0;0.012 0.01];
AbyBm = (yk-y1_prime)/(xF_prime-xNp_prime);
Bm = A/AbyBm;// [kg kerosene/h];
printf("Mininmum kerosene rate: %f kg kerosene/h \n",Bm);

// Solution (b)

B = 1150;// [kg/h]
AbyB = A/B;
// From Eqn. 10.36:
y2_prime = ((xF_prime-xNp_prime)*AbyB)+yS_prime;// [kg nicotine/kg kerosene]
// Operating Line should pass through (xNp_prime,y1_prime) & (xF_prime,y2_prime)
Operat = [xNp_prime y1_prime;xF_prime y2_prime];
scf(25);
plot(Eqb(:,1),Eqb(:,2),Operat(:,1),Operat(:,2));
xgrid();
legend("equilibrium Line","Operating Line");
xlabel("kg nicotine/kg water");
ylabel("kg nicotine/kg kerosene");
title("Solution 10.4(b)")
a = gca();
a.data_bounds = [0 0;0.012 0.01];
// From Figure:
Np = 8.3;
printf("Number of theoretical stages:%f \n",Np);