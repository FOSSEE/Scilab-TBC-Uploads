// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 29,Page 139
//Title: Amount of energy transferred as heat in the boiler
//================================================================================================================
clear 
clc

//INPUT
T_exit=550;//temperature in K at which the combustion products leave the boiler
percent_molar_comp_prdct=[6.28;3.14;7.85;82.73];// percentage molar composition of the combustion products CO2(g),CO(g),O2(g),N2(g) on dry basis
T_ent=298.15;//temperature in K at which Propane and air enter the combustion chamber
del_Hf=[-393.978;-110.532;-241.997;0;0;-103.833];//standard enthalpies of formation of CO2(g),CO(g),H2O(g),O2(g),N2(g),C3H8(g) at 298.15K in kJ
a=[45.369;28.068;30.255;27.270;28.850];//coefficients to compute isobaric molar heat capacity of CO2(g),CO(g),O2(g),N2(g),H2O(g) in J/molK
//coefficients to compute isobaric molar heat capacity of CO2(g),CO(g),O2(g),N2(g),H2O(g) in J/molK
b=[8.688*10^-3;4.631*10^-3;4.207*10^-3;4.930*10^-3;12.055*10^-3];
c=[0;0;0;0;0];//coefficients to compute isobaric molar heat capacity of CO2(g),CO(g),O2(g),N2(g),H2O(g) in J/molK
d=[0;0;0;0;0];//coefficients to compute isobaric molar heat capacity of CO2(g),CO(g),O2(g),N2(g),H2O(g) in J/molK
e=[-9.619*10^5;-0.258*10^5;-1.887*10^5;0.333*10^5;1.006*10^5];//coefficients to compute isobaric molar heat capacity of CO2(g),CO(g),O2(g),N2(g),H2O(g) in J/molK
per_N2=79;//percentage of nitrogen in air
per_O2=21;//percentage of oxygen in air
molar_mass_propane=44*10^-3;//molar mass of propane in kg/mole

//CALCULATION
// TAKE BASIS AS 100 mol OF  DRY COMBUSTION PRODUCTS
n_CO2=percent_molar_comp_prdct(1,:);//number of moles of CO2(g) in the product stream
n_CO=percent_molar_comp_prdct(2,:);//number of moles of CO(g) in the product stream
n_O2=percent_molar_comp_prdct(3,:);//number of moles of O2(g) in the product stream
n_N2=percent_molar_comp_prdct(4,:);//number of moles of N2(g) in the product stream

//The combustion reaction can be given as:
// x C3H8+ y O2+ (79/21)y N2--->6.28CO2+3.14CO+7.85O2+82.73N2+ zH2O

//Determination of x, y, z

//carbon atom balance:
x=(n_CO2+n_CO)/3;

//Nitrogen atom balance:
y=(2*n_N2)/(2*(per_N2/per_O2));

//oxygen atom balance
z=(2*y)-(2*n_CO2)-(n_CO)-(2*n_O2);

//The actual combustion reaction becomes:
//3.14C3H8+ 21.992O2+ 82.73N2--->6.28CO2+3.14CO+7.85O2+82.73N2+ 12.584H2O

n_H2O=z;//number of moles of H2O determined after the balance done on the carbon,oxygen,and nitrogen atoms
n_C3H8=x;//number of moles of C3H8 determined after the balance done on the carbon,oxygen,and nitrogen atoms

//calculation of the standard enthalpy of the reaction at 298.15K in kJ
//del_hf=0, for oxygen and nitrogen,therefore they are omitted in the expression
del_Hr=(n_CO2*del_Hf(1,:))+(n_CO*del_Hf(2,:))+(n_H2O*del_Hf(3,:))-(n_C3H8*del_Hf(6,:));

del_a=(n_CO2*a(1,:))+(n_CO*a(2,:))+(n_O2*a(3,:))+(n_N2*a(4,:))+(n_H2O*a(5,:));//calculation of del_a using Eq.(4.83)
del_b=(n_CO2*b(1,:))+(n_CO*b(2,:))+(n_O2*b(3,:))+(n_N2*b(4,:))+(n_H2O*b(5,:));//calculation of del_b using Eq.(4.83)
del_c=(n_CO2*c(1,:))+(n_CO*c(2,:))+(n_O2*c(3,:))+(n_N2*c(4,:))+(n_H2O*c(5,:));//calculation of del_c using Eq.(4.83)
del_d=(n_CO2*d(1,:))+(n_CO*d(2,:))+(n_O2*d(3,:))+(n_N2*d(4,:))+(n_H2O*d(5,:));//calculation of del_d using Eq.(4.83)
del_e=(n_CO2*e(1,:))+(n_CO*e(2,:))+(n_O2*e(3,:))+(n_N2*e(4,:))+(n_H2O*e(5,:));//calculation of del_e using Eq.(4.83)

//calulation of del_Hp J
       del_Hp=(del_a*(T_exit-T_ent))+((del_b/2)*((T_exit^2)-(T_ent^2)))+((del_c/3)*((T_exit^3)-(T_ent^3)))+((del_d/4)*((T_exit^4)-(T_ent^4)))-(del_e*((1/T_exit)-(1/T_ent)));
       del_H=((del_Hr*10^3)+(del_Hp))*10^-3;//calculation of total energy transferred as heat in kJ
       mass_propane=n_C3H8*molar_mass_propane;//calculation of amount of propane in the system in kg
       energy=(-(del_H*10^3)/mass_propane)*10^-6;//energy transferred as heat per kg propane in MJ
       
//OUTPUT
mprintf('\n The energy transferred as heat per kg propane= %f MJ\n',energy);

//===============================================END OF PROGRAM===================================================

       
