clc
clear
//Initalization of variables
lhs=8.5 //moles of reactants
rhs=6 //moles of CO2
n=3 //moles of H2O
R=1545 //Universal gas constant
R2=18.016 //molar mass of water
J=778 //Work conversion constant
T=537 //R
T2=1050.4 //R
T3=991.3 //R
Qhp=1417041 //Btu/mol
//calculations
Qhpv=(lhs-rhs)*R*T/J
Qhv=Qhp-Qhpv
hfg=(rhs-n)*R2*T2
Qlp=Qhp-hfg
Qlpv=(lhs-rhs-n)*R/J *T
Qlv=Qlp-Qlpv
Qhlv=(rhs-n)*R2*T3
Qlv3=Qhv-Qhlv
//results
printf("Higher heating value at constant volume = %d Btu/mol",Qhv)
printf("\n Lower heating value at constant pressure = %d Btu/mol",Qlp)
printf("\n In case 1,Lower heating value at constant volume = %d Btu/mol",Qlv)
printf("\n In case 2,Lower heating value at constant volume = %d Btu/mol",Qlv3)
disp("The answers might differ a bit from textbook due to rounding off error.")
