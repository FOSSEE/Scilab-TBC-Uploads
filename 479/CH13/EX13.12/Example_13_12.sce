//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.12
clear;
clc;

//Given
x_A = [0 0.0435 0.0942 0.1711 0.2403 0.3380 0.5981];//mole fraction of acetic acid
p_A = [0 17.2 30.5 46.5 57.8 69.3 95.7];//partial pressure of acetic acid in mmHg
P_T1 = 202;//vapour pressure of toulene in mmHg
P_T2_ex = 167.3;//experimental partial pressure in mmmHg

//To Calculate the partial pressure of toulene in the solution and check with the experimental value
//From the equation 13.95,
//ln(P_T2/P_T1) = -intg(x_A/((1-x_A)*p_A))
for i = 1:7
    if (p_A(i) ~= 0)
    x(i) = (x_A(i)/((1-x_A(i))*p_A(i)))*10^4
    end
end
plot(x,p_A);
xtitle(" ","(x_A/((1-x_A)*p_A))*10^4", "p_A");
//Area of the graph drawn is
A = -0.138;
P_T2 = (%e^A)*P_T1;
e = ((P_T2-P_T2_ex)*100)/P_T2_ex;
mprintf('The partial pressure of toulene is %f mmHg',P_T2);
mprintf('\n This deviates %i percent from the reported value',e);
//end