//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.6
clear;
clc;

//Given
//SO2 + (1/2)O2 - SO3
//Basis: 1 Kgmole of SO2
n_SO2 = 1;// SO2 fed in Kgmole
//From table 14.1 (page no 301)
//alpha values for the following components are given as
a_SO2 = 7.116;
a_O2 = 6.148;
a_SO3 = 6.077;
//beta values for the following components are given as
b_SO2 = 9.512*10^-3;
b_O2 = 3.102*10^-3;
b_SO3 = 25.537*10^-3;
//Standard enthalpy of the following components at 25 deg cel in Kcal/Kgmole are given as
H_SO2 =-70960;
H_O2 = 0;
H_SO3 = -94450;
//Standard free energy of the following components at 25 deg cel in Kcal/Kgmole K are given as
F_SO2 = -71680;
F_O2 = 0;
F_SO3 = -88590;
n_O2 = n_SO2;//O2 fed in Kgmole; since 50 mole percent mixture of SO2 &amp; O2 is fed
n_SO3 = n_SO2;//SO3 formed in Kgmole
n_O2_e = n_O2-(n_O2/2);//Kgmoles of O2 in exit gas
n_O2_r = n_O2/2;//Kgmoles of O2 reacted
R = 1.98;//gas constant in Kcal/Kgmole K

//To show  the variation of the standard heats of reaction with temperature and the equilibrium constant with temperature graphically in the  given temperature range
//(i)Variation of the standard heats of reaction with temperature
del_H = (n_SO3*H_SO3)-(n_O2_r*H_O2)-(n_SO2*H_SO2);// in Kcal/Kgmole
del_F = (n_SO3*F_SO3)-(n_O2_r*F_O2)-(n_SO2*F_SO2);// in Kcal/Kgmole
//From equation 14.10 (page no 301)
del_a = (n_SO3*a_SO3)-(n_O2_r*a_O2)-(n_SO2*a_SO2);
del_b = (n_SO3*b_SO3)-(n_O2_r*b_O2)-(n_SO2*b_SO2);
//In equation 14.11 (page no 302), substituting del_H at
T = 298;//in deg cel
I = del_H - del_a*T - (del_b*(T^2)/2);// integrating constant
mprintf('(i)The standard heat of reaction at any tempperature can be calculated by the relation:');
mprintf('\n    del_Ht = %fT + %fT^2 %f',del_a,del_b/2,I);

//(ii)Variation of the equilibrium constant with temperature
//K1 = lnKa (say)
K1 = -del_F/(R*T);
//From equation 14.42 (page no 316); M1 = M/R (say)
M1 = K1-(del_a/R)*log(T)-(del_b/(2*R))*T+(I/(T*R));
//Let us assume the temperature in the range 800K to 1500K as
Ta = [700 800 825 850 900 1000 1100 1300 1500];
for i = 1:9
    Ka(i) = %e^((del_a/R)*log(Ta(i))+(del_b*Ta(i)/(2*R))-(I/(Ta(i)*R))+M1);
end
clf;
plot(Ta,Ka);
xtitle(" ","Temperature in K","equilibrium constant K");
mprintf('\n\n(ii)From the graph it can be seen that as temperature increases Ka decreases exponentially,so the reaction is exothermic.');
//end