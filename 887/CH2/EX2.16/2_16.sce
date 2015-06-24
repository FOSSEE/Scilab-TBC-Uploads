clc
//ex2.16
V_s=15;      //source voltage
R_1=100;
R_2=50;
//Analysis with an open circuit to find V_t
i_1=V_s/(R_1+R_2);      //closed circuit with R_1 and R_2 in series
V_oc=R_2*i_1;      //open-circuit voltage across R_2
V_t=V_oc;      //thevenin voltage
//Analysis with a short-circuit to find i_sc
i_sc=V_s/R_1;      //R_2 is short-circuited
R_t=V_oc/i_sc;      //thevenin resistance
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of textbook")
disp(V_t,'Thevenin voltage for given circuit in volts')
disp(R_t,'Thevenin voltage for given circuit in ohms')
