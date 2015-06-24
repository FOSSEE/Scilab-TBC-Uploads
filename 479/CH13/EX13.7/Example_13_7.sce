//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.7
clear;
clc;

//Given
x_T = 0.957;//mole fraction of Toluene
x_D = 0.043;//mole fraction of 1,2-dichloroethane
t = [90; 100; 110];//temperature in deg cel
R = 1.98;//gas constant in Kcal/Kgmole K

//To Calculate the vapour pressure of the solution, bubble point at 686 mm Hg and the vapour composition at equilibrium,
//compare the experimental value of 91.2% toluene in vapour with the calculated value & calculate the free energy of mixing
//(1)Calculation of vapour pressure
mprintf('(1)Temp(deg cel)    P_T(mmHg)          P_D(mmHg)           P_s(mmHg)');
for i = 1:3
    P_T(i) = 10^(6.95464-(1344.8/(219.482+t(i))));//Given as equation(a)(page no 260)
    P_D(i) = 10^(7.03993-(1274.079/(223+t(i))));//Given as equation(b)(page no 260)
    P_s(i) = x_T*P_T(i)+x_D*P_D(i);//pressure of the solution in mm Hg
    mprintf('\n   %f',t(i));
    mprintf('          %f',P_T(i));
    mprintf('        %f',P_D(i));
    mprintf('         %f',P_s(i));
end 

//(2)Calculation of bubble point and comparison of values
clf;
plot(t,P_s);
xtitle("t vs P_s","t","P_s");
T = interpln([P_s';t'],686);
P = 686;//pressure of solution in mm Hg
y_T_e = 0.912;//experimental value of mole fraction of toluene
//From the graph we found that the temperature at P = 686 mm Hg is
//t = 105.3;//in deg cel
mprintf('\n\n(2)The bubble point is %f deg cel',T);
//From equation (a)(page no 260)
P_T = 10^(6.95464-(1344.8/(219.482+T)));//vapour pressure of Toluene in mmHg
//From equation 13.27 (page no 245)
y_T_c = (x_T*P_T)/P;
y_D_c = 1-y_T_c;
mprintf('\n  The vapour composition of toluene is %f',y_T_c);
mprintf('\n  The vapour composition of 1,2-dichloroethane is %f',y_D_c);
e = ((y_T_e-y_T_c)/y_T_e)*100;
mprintf('\n The percentage error is %f percent',e);

//(3)Calculation of free energy
del_F = R*(T+273)*((x_T*log(x_T))+(x_D*log(x_D)));
mprintf('\n\n(3)The free energy of mixing is %f Kcal/Kgmole',del_F);
//end