clc
//ex2.22
V_s=15;      //voltage source
R_1=10;
R_2=5;
i_s=2;      //current source
//Analysis with only voltage source active
V_1=R_2*V_s/(R_1+R_2);      //voltage-division principle
//Analysis with only current source active
R_eq=1/((1/R_1)+(1/R_2));      //R_1 and R_2 in parallel
V_2=i_s*R_eq;      //ohm's law
V_T=V_1+V_2;      //total response
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(V_T,'VT i.e., voltage across R2 in volts')
