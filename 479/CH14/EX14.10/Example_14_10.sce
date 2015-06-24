//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.10
clear;
clc;

//Given
//SO2(A) + (1/2)O2 (B) - SO3(C)
//Basis: 1 Kgmole SO2
n_A = 1;//Kgmole of SO2 fed
n_B = n_A;//Kgmole of O2 fed
T1 = 273+400;//Temperature in K at which reactants enter
To = 298;//room temperature in K
del_H = -23490;//Standar heat of reaction at 25 deg cel from example 14.6 in Kcal/Kgmole

//At T1,
C_A_T1 = 11.0; C_B_T1 = 7.4;//in Kcal/Kgmole
//Assume the various temperature be
T = [913 1073 1373 1573];//in K
//Mean specific heats of the components A,B & C at various temperature are given below in Kcal/Kgmole K
C_A = [11.6 11.8 12.3 12.5];
C_B = [7.7 7.8 8.0 8.2];
C_C = [  16.6 17.2 18.2 18.6];

//To Calculate the final temperature for various conversions and the maximum conversion that can be attained in a single reactor operating adiabatically
//In equation 14.18 (page no 307), H2-Hr = K  & (Hp-H3)= L(say)
K = ((n_A*C_A_T1)+(n_B*C_B_T1))*(To-T1);//in Kcal/Kgmole
mprintf('Adiabatic reaction temp in K             pecentage conversion of SO2');
for i = 1:4
    n_C(i) = (-K-(C_A(i)*(T(i)-To))-(C_B(i)*(T(i)-To)))/((T(i)-To)*(C_C(i)-C_A(i)-0.5*C_B(i))+del_H);
mprintf('\n   %d',T(i));
mprintf('                                              %f',n_C(i)*100);
end

clf;
//plot(T,n_C*100);
plot2d(T,n_C*100,style =2);
//Now equilibrium conversion at various temperature taken from figure 14.7 (page no 325) are given as
Ta = [850 900 1000 1100 1200 1300 1400];
n_C1 = [93.5 88.2 69.0 49.0 37.0 21.5 6.25];
plot2d(Ta,n_C1,style=3);
xtitle("Temperature vs Percentage Conversion","Temperature in K","% Conversion");
//From the graph,it can be seen that the curve cut each other approximately at the temp
T1 = 1140;//in Kelvin
C = interpln([Ta;n_C1],T1);
mprintf('\n\n The maximum conversion that can be attained is %d percent',C);
//end