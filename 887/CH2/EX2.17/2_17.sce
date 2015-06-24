clc
//ex2.17
V_s=20;      //source voltage
i_s=2;      //source current
R_1=5;
R_2=20;
//after zeroing the sources which includes replacing voltage source with short circuit and current source with open circuit, we get R_t
R_eq=1/((1/R_1)+(1/R_2));      //R_1 and R_2 are in parallel combination
R_t=R_eq;      //Thevenin resistance
//short-circuit analysis to find i_sc
i_2=0;      //voltage across R_2 is 0
i_1=V_s/R_1;
i_sc=i_1+2-i_2;      //short-circuit current(KCL at junction of R_2 and I_s)
V_t=R_t*i_sc;      //thevenin voltage
disp(i_sc,'short-circuit current in amperes')
disp(R_t,'thevenin resistance in ohms')
disp(V_t,'thevenin voltage in volts')
//thevenin equivalent can be made of V_t and R_t.
