clc
clear
//INPUT DATA
//C2H2+3O2=2CO2+2H2O ;//Chemical equation
t1=298;//initial temperature in K
t2=800;//Final temperature in K
R=0.287;//gas constant in kJ/kgK
dhCO2=22815;//From tables enthalpy of CO2 kJ/kmol
dhH2O=17991;//From tables enthalpy of H2O kJ/kmol
hfCO2=-393520;//From tables enthalpy of CO2 kJ/kmol
hfH2O=-241827;//From tables enthalpy of H2O kJ/kmol
hfC2H4=52283;//From tables enthalpy of C2H4 kJ/kmol

//CALCULATIONS
Q=2*(hfCO2+dhCO2)+2*(hfH2O+dhH2O)-1*(hfC2H4)-4*R*(t2-t1);//amount of heat transfer from the reactants

//OUTPUT
printf('(i)The amount of heat transfer from the reactants is %3.1f kJ/kmol of fuel ',Q)

