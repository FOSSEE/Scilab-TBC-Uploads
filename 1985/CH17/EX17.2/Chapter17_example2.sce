clc
clear
//Input data
L2=0.032//Length of the wax melted portion in the iron rod in m
L1=0.08//Length of the wax melted portion in the copper rod in m
K1=385//Thermal conductivity of copper in W/m.K

//Calculations
K2=(K1*L2^2)/L1^2//Thermal conductivity of iron in W/m.K

//Output
printf('Thermal conductivity of iron is %3.1f W/m.K',K2)
