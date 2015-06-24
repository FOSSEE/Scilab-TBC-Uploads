clc
//Example 5.11
//Calculate the flow rate of helium with rotameter caliberated with nitogen
M_N2=28//dimentionless
M_He=4//dimentionless
//Density is proportional to molecular weight
q_N2=100//cm^3/min
q_He=q_N2*(M_N2/M_He)^0.5//cm^3/min
printf("The flow rate of Helium is %f cm^3/min",q_He);