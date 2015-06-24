clear;
clc;

// Illustration 12.9
// Page: 709

printf('Illustration 12.9 - Page: 709\n\n');

// Solution 

//***Data***//
x1 = 0.46;// [fraction moisture]
x2 = 0.085;// [fraction moisture]
Y1 = 0.08;// [kg water/kg dry solid]
Y2 = 0.03;// [kg water/kg dry solid]
G = 1.36;// [kg/square m.s]
//**********//

X1 = x1/(1-x1);// [kg water/kg dry solid]
X2 = x2/(1-x2);// [kg water/kg dry solid]
// By water balance:
SsByGs = (Y1-Y2)/(X1-X2);// [kg dry solid/kg air]
// Since the initial moisture content of the rayon is less than the critical, drying takes place entirely within zone III.
// Comparing with Eqn. 12.22:
// (kY*A/(Ss(Xc-X*)))=0.0137*G^1.47
// thetha=integrate('(1/(0.0137*G^1.47))*(1/((X-X_star)*(Yw-Y)))','X',X2,X1) // [s]
X = [X1 0.80 0.60 0.40 0.20 X2];// [kg water/kg dry solid]
Y = zeros(6);
for i = 1:6
   // From Eqn. 12.54:
   Y(i) = Y2+((X(i)-X2)*SsByGs);// [kg water/kg dry gas]
end
// From Fig. 7.5 (Pg 232):
Yw = [0.0950 0.0920 0.0790 0.0680 0.0550 0.0490];// [kg water/kg dry gas]
X_star = zeros(6);
Val = zeros(6);
P = 51780;// [vapour pressure, kN/square m]
for i = 1:6
    // From Eqn 7.8:
    deff('[y]=f(p)','y=Y(i)-((p/(101330-p))*(18/29))');
    p = fsolve(7,f);// [kN/square m]
    RH(i) = (p/P)*100;
    X_star(i) = (RH(i)/4)/(100-(RH(i)/4));// [kg water/kg dry solid]
    Val(i) = 1/((X(i)-X_star(i))*(Yw(i)-Y(i)));
end
scf(41);
plot(X,Val);
xgrid();
xlabel("X kg water/kg dry solid");
ylabel("1/((X-X*)*(Yw-Y))");
title("Graphical Integration");
// Area Under the curve:
Area = 151.6;
// From Eqn. 12.59:
thetha = Area/(0.0137*G^1.47);
printf("Time required for drying: %f h\n",thetha/3600);