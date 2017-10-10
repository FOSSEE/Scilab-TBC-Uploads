//ques-18.19
//Calculating enthalpy change for the process
clc
G1=-85.77; G2=-83.68;//free energy change (in kJ)
T1=273+25; T2=273+35;//temperature (in K)
//G=H-T*S
//On comparing, (G1-H)/T1 = (G2-H)/T2
H=-148;//enthalpy change (in kJ)
printf("The enthalpy change for the process is %d kJ.",H);
