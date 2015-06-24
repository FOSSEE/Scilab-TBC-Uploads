clc
//ex2.18
V=10;
R_1=5;
R_2=10;
//Open-circuit anlaysis
//let V_oc be the open circuit voltage
//Current equation at node1   3(i_x)=(1/10)V_oc
//i_x=(10-V_oc)/5   ix in terms of V_oc
V_oc=2/((1/5)+(1/30));      //open-circuit voltage(from above two equations)
V_t=V_oc;      //thevenin voltage
//short-circuit analysis
i_x=V/R_1;
i_sc=3*i_x;      //short-circuit current
R_t=V_oc/i_sc;
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of textbook")
disp(V_t,'Thevenin voltage in volts')
disp(R_t,'Thevenin resistance in ohms')
