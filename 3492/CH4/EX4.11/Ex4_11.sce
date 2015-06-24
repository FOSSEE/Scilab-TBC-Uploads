clc
//Chapter4
//Ex_11
//Given
e=1.6*10^-19 // in coulombs
T=373 // in kelvin
To=273 // in kelvin
k=1.38*10^-23 //in m2 kg /k/s2
//from table 4.3
E_FAO= 11.6 //in eV
E_FAO=E_FAO*e //in J
x_A=2.78
E_FBO= 7.01 //in eV
E_FBO=E_FBO*e //in J
x_B=-1.79
//Mott jones Equation
V_AB=(-%pi^2*k^2/(6*e))*((x_A/E_FAO)-(x_B/E_FBO))*(T^2-To^2)
disp(V_AB*10^6,"EMF in micro volts available from Al and Cu thermocouple with the given respective temperatures at the junctions is")
