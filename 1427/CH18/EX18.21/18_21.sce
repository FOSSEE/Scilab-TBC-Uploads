//ques-18.21
//Determining heat of formation at constant volume
clc
H=-74.85;//heat of formation of methane at constant pressure (in kJ/mol)
n=1-2;//change in gaseous moles
T=273+25;//temperature (in K)
U=H*1000-n*8.314*T;//heat of formation at constant volume
printf("Heat of formation at constant volume is %.2f kJ/mol.",U/1000);
