//clear//
clear;
clc;

//Example 16.2
//Given
Ti = 108; //[C]
Tl = 52; //[C]
U1 = 2500; //[W/m^2]
U2 = 2000; //[W/m^2]
U3 = 1000; //[W/m^2]

//Solution
//Total temperature drop
delta_T = Ti-Tl; //[C]
//From Eq.(16.13), the temperature drops in several effects will be 
//approximaely inversely proportional to the coeficients. Thus
delta_T1 = 1/U1/(1/U1+1/U2+1/U3)*delta_T; //[C]
delta_T2 = 1/U2/(1/U1+1/U2+1/U3)*delta_T; //[C]
delta_T3 = 1/U3/(1/U1+1/U2+1/U3)*delta_T; //[C]
//Consequently the boiling points will be
Tb1 = Ti-delta_T1; //[C]
Tb2 = Tb1-delta_T2; //[C]
disp('C',Tb1,'The boiling point in the first effect is')
disp('C',Tb2,'The boiling point in the second effect is')
