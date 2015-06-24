clear;
clc;

// Illustration 11.2
// Page: 596

printf('Illustration 11.2 - Page: 596\n\n');

// solution

//*****Data*****//
// x:kg carbon/kg soln
// y_star: Equilibrium colour, units/kg soln.
// X:adsorbate concentration, units/kg carbon
// Data = [x Y_star]
Data = [0 9.6;0.001 8.6;0.004 6.3;0.008 4.3;0.02 1.7;0.04 0.7];
Yo = 9.6;// [units of colour/kg soln]
Y1 = 0.1*Yo;// [units of colour/kg soln]
Ls = 1000;// [kg soln]
//****************//

Data1 = zeros(5);
Val = zeros(5);
for i = 1:5
    Data1(i,1) = Data(i+1,1);
    Data1(i,2) = Data(i+1,2);
    Val(i) = (Data(1,2)-Data1(i,2))/Data1(i,1);
end
scf(31);
plot2d1("gll",Val,Data1(:,2));
xlabel("units of colour/kg carbon");
ylabel("units of colour/kg solution");
title("Equilibium Data(on log scale)");
xgrid();
n = 1.66;// [slope of line]
// At X = 663, Y_star = 4.3
// From eqn. 11.5
X = 663;
Y_star = 4.3;
m = Y_star/X^n;
// Freundlich Equation:
deff('[Y] = f76(X)','Y = m*X^n');
X = 0:1:1000;
scf(32);
plot(X,f76);
xgrid();
xlabel("units of colour/kg carbon");
ylabel("units of colour/kg solution");
title("Equilibium Data(on arithmetic scale)");

// Single Stage Operation:
// Since fresh carbn is used:
Xo = 0;// [units/kg carbon]
// From scf(30):
X1 = 270;// [units/kg carbon]
Data2 = [Xo Yo;X1 Y1];
scf(33);
plot(X,f76,Data2(:,1),Data2(:,2));
xgrid();
xlabel("units of colour/kg carbon");
ylabel("units of colour/kg solution");
legend("Equilbrium curve","Operating line curve");
title("Single stage operation");
// From Eqn. 11.4:
Ss = Ls*((Yo-Y1)/(X1-Xo));// [kg carbon/kg soln]
printf("Quantity of fresh carbon recquired for single stage operation: %f kg carbon/1000 kg solution\n",Ss);

// Two stage cross current operation:
// For the minimumamount of carbon:
X1 = 565;// [units/kg carbon]
Y1 = 3.30;// [units of colour/kg soln]
X2 = 270;// [units/kg carbon]
Y2 = 0.96;// [units of colour/kg soln]
Data3 = [Xo Yo;X1 Y1];
Data4 = [0 Y1;X2 Y2];
scf(34);
plot(X,f76,Data3(:,1),Data3(:,2),Data4(:,1),Data4(:,2));
xgrid();
xlabel("units of colour/kg carbon");
ylabel("units of colour/kg solution");
legend("Equilbrium curve","First of two Cocurrent","Second of two Cocurrent");
title("Two stage Cross current operation");
// From Eqn. 11.8:
Ss1 = Ls*(Yo-Y1)/(X1-Xo);// [kg]
Ss2 = Ls*(Y1-Y2)/(X2-Xo);// [kg]
Ss = Ss1+Ss2;// [kg]
printf("Quantity of fresh carbon recquired for two stage crosscurrent operation: %f kg carbon/1000 kg solution\n",Ss);

// Two Stage counter current operation:
Yo = 9.6;
Y2 = 0.96;
// By trial and error:
XNpPlus1 = 0;
X1 = 675;
Data5 = [X1 Yo;XNpPlus1 Y2];
scf(35);
plot(X,f76,Data5(:,1),Data5(:,2));
xgrid();
xlabel("units of colour/kg carbon");
ylabel("units of colour/kg solution");
legend("Equilbrium curve","Two stage Counter Current");
title("Two stage Counter Current operation");
// By eqn 11.14:
Ss = Ls*(Yo-Y2)/(X1-XNpPlus1);
printf("Quantity of fresh carbon recquired for two stage Counter Current operation: %f kg carbon/1000 kg solution\n",Ss);