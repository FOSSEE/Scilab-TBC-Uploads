clear;
clc;

// Illustration 13.3
// Page: 754

printf('Illustration 13.3 - Page: 754\n\n');

// Solution (a)

//***Data***//
// a=H2O b=CaCO3 c=NaOH 
mass_c = 400;// [kg/h]
x1 = 0.1;// [wt fraction NaOH in overflow]
//**********//

Mb = 100;// [kg/kmol]
Mc = 40;// [kg/kmol]
rate_c = mass_c/Mc;// [kmol/h]
rate_b = rate_c/2;// [kmol/h]
mass_b = rate_b*Mb;// [kg/h]
// After trial calculations:
y3 = 0.01;// [kg NaOH/kg solution]
N3 = 0.666;// [kg CaCO3/kg solution]
E3 = mass_b/N3;// [kg/h]
lost_c = E3*y3;// [kg/h]
sludge_a = E3-lost_c;// [kg/h]
overflow_c = mass_c-lost_c;// [kg NaOH/kg solution]
R1 = overflow_c/x1;// [kg overflow/h]
R1_a = R1-overflow_c;// [kg/h]
RNpPlus1 = R1_a+sludge_a;// [kg/h]
// For purpose of calculation, it may be imagined that agitators are not present in the flowsheet and the first thickner is fed with the dry mixture of the reaction products, CaCO3 and NaOH, together with overflow from the second thickner.
F = 400;// [kg NaOH/h]
NF = mass_b/F;// [kg CaCO3/kg NaOH]
yF = 1;// [wt fraction NaOH in dry solid, CaCO3 free basis]
// Points R1, E3, RNpPlus1 and F are plotted as in Fig 13.30 (Pg 755) and locate the point deltaR at the intersection of lines FR1 and E3RNpPlus1 extended. The coordinates of point deltaR are NdeltaR=-0.1419, ydeltaR=-0.00213. Further computation must be done on enlarged section of the equilibrium diagram (Fig 13.31 (Pg 755)). Point deltaR is plotted and the stages stepped off in a usual manner. The construction are projected on the xy diagram. Three stages produce a value:     y3=0.001
printf("The NaOH lost in sludge: %f%%\n",(lost_c/mass_c)*100);
printf("\n");

// Solution (b)
//*** Data***//
lost_c = 0.001*mass_c;// [kg/h]
//***********//

NNp_by_yNp = mass_b/lost_c;// [kg CaCO3/kg NaOH in final sludge]
// In order to determine the liquid content of the final sludge:
// Eqb=[N y_star]
Eqb = [0.659  0.01435;0.666 0.01015;0.677 0.002;0.679 0.001;0.680 0.0005];
N_by_ystar = zeros(5);
for i = 1:5
    N_by_ystar(i) = Eqb(i,1)/(Eqb(i,2));
end
scf(43);
plot(Eqb(:,1),Eqb(:,2));
xgrid();
xlabel("x Wt fraction of NaOH");
ylabel("N kg CaCO3 / kg solution");
title("Equilibrium plot")
// By Interpolation, for N_by_ystar=NNp_by_yNp:
NNp = interpln([(N_by_ystar)';Eqb(:,1)'],NNp_by_yNp);// [kg CaCO3/kg soln]
yNp = NNp/NNp_by_yNp;// [wt fraction NaOH in the liquid of the final sludge]
ENp = mass_b/NNp;// [kg/h]
ENp_a = ENp-lost_c;// [kg/h]
overflow_c = mass_c-lost_c;// [kg/h]
R1 = overflow_c/0.1;// [kg/h]
R1_a = R1-overflow_c;// [kg/h]
RNpPlus1 = R1_a+sludge_a;// [kg/h]
// On the operating diagram (Fig 13.32 (Pg 757)) point deltaR is located and stages were constructed. 
// Beyond the fourth stage, the ratio of the overflow to the liquid in the sludge become substantially constant.
R_by_E = RNpPlus1/ENp;
// This is the initial slope of the operating line on the lower part of the figure.
// From Illustration 13.2:
m = 0.01015/0.00450;
Value1 = R_by_E/m;
xNpPlus1 = 0;// [kg NaOH/kg solution]
y4 = 0.007;// [wt fraction NaOH in the liquid]
Value2 = (yNp-(m*xNpPlus1))/(y4-(m*xNpPlus1));
// From Fig 5.16: (Pg 129):
// An Additional 2.3 stages beyond 4 are computed graphically are required.
// An additional two stage will make yNp/y4=0.099:
yNp = 0.099*y4;// [wt fraction NaOH in the liquid]
printf("%f kg NaOH was lost if 6 thickners were used\n",yNp*ENp);
// An additional three stage will make yNp/y4=0.0365:
yNp = 0.0365*y4;// [wt fraction NaOH in the liquid]
printf("%f kg NaOH was lost if 7 thickners were used\n",yNp*ENp);