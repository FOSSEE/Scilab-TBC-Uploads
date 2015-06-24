clc
//ex2.21
V_s=50;
R_1=20;
R_2=5;
//Zeroing the voltage source
R_eq=1/((1/R_1)+(1/R_2));      //R_1 and R_2 in parallel
R_t=R_eq;      //thevenin resistance
//open-circuit analysis
V_oc=V_s*R_2/(R_1+R_2);      //open-circuit voltage
V_t=V_oc;      //thevenin voltage
R_L=R_t;
P_L_max=V_t^2/(4*R_t)
disp(R_L,'load resistance for maximum power transfer in ohms')
disp(P_L_max,'maximum power in watts')
