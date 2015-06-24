clc
//ex2.4
V_s=100;      //source current
R_1=60;
R_2=30;
R_3=60;
R_x=1/((1/R_2)+(1/R_3));      //R_2 and R_3 parallel
V_x=R_x*V_s/(R_1+R_x);      //voltage across R_x(voltage-division principle)
i_s=V_s/(R_1+R_x);      //ohm's law
i_3=R_2*i_s/(R_2+R_3);      //current through R_3(current-division principle)
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of Textbook")
disp(V_x,'voltage across R2 or R3 in volts')
disp(i_s,'source current in amperes')
disp(i_3,'current through R3 in amperes')
