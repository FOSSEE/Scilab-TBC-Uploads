clc
clear 
printf("example 3.16 page number 107\n\n")

//to compare the enthalpy change in two reactions

H0_glucose = -1273  //in kJ
H0_ethanol = -277.6  //in kJ
H0_CO2 = -393.5  //in kJ
H0_H2O = -285.8   //in kJ

//for reaction 1
delta_H1 = 2*H0_ethanol+2*H0_CO2-H0_glucose;
printf("enthalpy change in reaction 1 = %f KJ",delta_H1)

//for reaction 2
delta_H2 = 6*H0_H2O+6*H0_CO2-H0_glucose;
printf("\n\nenthalpy change in reaction 2 = %f kJ",delta_H2)

if delta_H1>delta_H2 then disp ("reaction 2 supplies more energy")
    else disp ("reaction 1 supplies more energy")
end
