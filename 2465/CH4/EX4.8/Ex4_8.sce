//Chapter-4,Example 8,Page 94
clc;
close;

delta_H_C= -393   // enthalpy for carbon

delta_H_H2= -286   //enthalpy for hydrogen

delta_H_C3H8=-2220  //enthalpy for propane

// According to Hess's Law... delta_H1 = delta_H2 - delta_H3

//delta_H2  for reaction... 3C +4H2 +5O2 ----> 3CO2 +4H2O

delta_H2= 3*delta_H_C +4*delta_H_H2  

//delta_H2  for reaction... C3H8 + 5O2 ----> 3CO2 +4H2O

delta_H3= delta_H_C3H8 

delta_Hf= delta_H2 - delta_H3   //enthalpy for propane at 298 K

printf('the enthalpy of formation of propane at 298K is %.f Kcal', delta_Hf)
