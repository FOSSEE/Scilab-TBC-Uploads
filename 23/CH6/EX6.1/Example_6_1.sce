clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 6.1
//Caption : Program To find the Changes in enthalpy and entropy

//Given Values

//At Temp T1=298.15K
T1=298.15;//[K]
P1=1;//[bar]
P2=1000;//[bar]
Cp_T1=75.305;//[KJ Kmol/K]
V1_T1=18.071*10^-3;//[m^3/Kmol]
V2_T1=18.012*10^-3;//[m^3/Kmol]
beta1_T1=256*10^-6;//[1/K]
beta2_T1=366*10^-6;//[1/K]

//At Temp T2=323.15K
T2=323.15;//[K]
P1=1;//[bar]
P2=1000;//[bar]
Cp_T2=75.314;//[KJ Kmol/K]
V1_T2=18.234*10^-3;//[m^3/Kmol]
V2_T2=18.174*10^-3;//[m^3/Kmol]
beta1_T2=458*10^-6;//[1/K]
beta2_T2=568*10^-6;//[1/K]

//Solution

//Formula to be used
//Eqn (6.28) del_H=((Cp)(T2-T1))-((V)(1-(beta)(T2)(P2-P1))
//Eqn (6.29) del_S=((Cp)ln(T2/T1)-((beta)(V)(P2-P1))

//For P=1
Cp=(Cp_T1+Cp_T2)/2;
//For T=323.15K
V=(V1_T2+V2_T2)/2;
beta_T=(beta1_T2+beta2_T2)/2;

del_H=approx((Cp*(T2-T1))+(V*(1-(beta_T*T2))*(P2-P1)*10^5*10^-3),0);
del_S=approx((Cp*(log(T2/T1)))-(beta_T*V*(P2-P1)*10^5*10^-3),2);

disp('KJ/Kmol',del_H,'Change In Enthalpy')
disp('KJ/Kmol/K',del_S,'Change In Entropy')

//End