// Example 1.6: Time for the output to reach (V_OH+V_OL)/2
V_DD=5; // (V)
R=1000; // (ohm)
R_on=100; // (ohm)
V_offset=0.1; // (V)
C=10*10^-12; // (F)
V_OH=5; // (V)
V_OL=V_offset+(V_DD-V_offset)*R_on/(R+R_on);
T=R*C;
v_o_t_PLH=(V_OH+V_OL)/2; //to find t_PLH 
t_PLH=0.69*T;// t_PLH is low to high propogtion delay
disp(t_PLH,"time required for he output to reach (V_OH+V_OL)/2 (seconds) =")