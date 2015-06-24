// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 28,Page 137
//Title:Flame temperature
//================================================================================================================
clear 
clc

//INPUT
 
//The combustion reaction of methane is given by:
// CH4(g)+2O2(g)--->CO2(g)+2H2O(g)

n_O2=2;// stoichiometric amount of oxygen required for combustion
n_CH4=1;//number of moles of CH4(g) in moles
n_CO2=1;//number of moles of CO2(g) formed in the combustion reaction in moles
n_H2O=2;//number of moles of H2O(g) formed in the combustion reaction in moles
del_Hf=[-74.943;0;-393.978;-241.997];// standard enthalpies of formation of CH4(g),O2(g),CO2(g),H2O(g) at 298.15K in kJ
a=[45.369;28.850;30.255;27.270];//coefficients to compute isobaric molar heat capacity of CO2(g),H2O(g),O2(g),N2(g) in J/molK
b=[8.688*10^-3;12.055*10^-3;4.207*10^-3;4.930*10^-3];//coefficients to compute isobaric molar heat capacity of CO2(g),H2O(g),O2(g),N2(g) in J/molK
c=[0;0;0;0];//coefficients to compute isobaric molar heat capacity of CO2(g),H2O(g),O2(g),N2(g) in J/molK
d=[0;0;0;0];//coefficients to compute isobaric molar heat capacity of CO2(g),H2O(g),O2(g),N2(g) in J/molK
e=[-9.619*10^5;1.006*10^5;-1.887*10^5;0.333*10^5];//coefficients to compute isobaric molar heat capacity of CO2(g),H2O(g),O2(g),N2(g) in J/molK
per_excess_air=50; //percentage excess of air supplied to the adiabatic burner
T_amb=298.15;// temperature at which air and methane enter the burner in K
per_N2=79;//percentage of N2 in the air supplied
per_O2=21;//percentage of O2 in the air supplied

//CALCULATION
n_O2_actual=(1+(per_excess_air/100))*n_O2;//calculation of the number of moles of oxygen actually present in the system in moles
n_N2=n_O2_actual*(per_N2/per_O2);//calculation of the number of moles of nitrogen actually present in the system in moles
n_O2_residual=n_O2_actual-n_O2;//calculation of excess oxygen leaving as product in moles
// The actual combustion reaction can be written as:
// CH4(g)+3O2(g)+11.286N2(g)--->CO2(g)+2H2O(g)+O2(g)+11.286N2(g)


del_Hr=(n_CO2*del_Hf(3,:))+(n_H2O*del_Hf(4,:))-(n_O2*del_Hf(2,:))-(n_CH4*del_Hf(1,:));//standard enthalpy of reaction at 298.15K in kJ

//-delH_r=del_Hp
//deriving an expression for del_Hp:

del_a=(n_CO2*a(1,:))+(n_H2O*a(2,:))+(n_O2_residual*a(3,:))+(n_N2*a(4,:));//calculation of del_a using Eq.(4.83)
del_b=(n_CO2*b(1,:))+(n_H2O*b(2,:))+(n_O2_residual*b(3,:))+(n_N2*b(4,:));//calculation of del_b using Eq.(4.83)
del_c=(n_CO2*c(1,:))+(n_H2O*c(2,:))+(n_O2_residual*c(3,:))+(n_N2*c(4,:));//calculation of del_c using Eq.(4.83)
del_d=(n_CO2*d(1,:))+(n_H2O*d(2,:))+(n_O2_residual*d(3,:))+(n_N2*d(4,:));//calculation of del_d using Eq.(4.83)
del_e=(n_CO2*e(1,:))+(n_H2O*e(2,:))+(n_O2_residual*e(3,:))+(n_N2*e(4,:));//calculation of del_a using Eq.(4.83)
tguess=500;//giving a guess value of temperature in K for using the inbuilt solver, fsolve to solve the system of equations below
function[fn]=solver_func(ti)
    //Function defined for solving the system 
fn=(-(del_Hr*10^3))-((del_a*(ti-T_amb))+((del_b/2)*((ti^2)-(T_amb^2)))+((del_c/3)*((ti^3)-(T_amb^3)))+((del_d/4)*((ti^4)-(T_amb^4)))+(del_e*((1/T_amb)-(1/ti))));
endfunction
[T]=fsolve(tguess,solver_func,1e-6)//using inbuilt function fsolve for solving the system of equations to get the flame temperaure in K

 //OUTPUT
mprintf('\n The flame temperature when methane is burned with 50 percent excess air in an adiabatic burner= %f K\n',T);

//===============================================END OF PROGRAM===================================================

 
  
  
