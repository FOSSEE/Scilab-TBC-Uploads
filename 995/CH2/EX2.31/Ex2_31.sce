//Ex:2.31
clc;
clear;
close;
L1=60;//in mH
L2=60;//in mH
L_a=L1+L2;
L3=120;//in mH
L_b=L_a*L3/(L_a+L3);
L4=50;//in mH
L_eq=L4+L_b;
printf("Equivalent Inductance = %d mH",L_eq);