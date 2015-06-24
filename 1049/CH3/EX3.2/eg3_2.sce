clear;
clc;
V_s=400;//V
V_o=100;//V
L=100;//uH
C=30;//uF
t_o=%pi*sqrt(L*C);    printf("conduction time of diode=%.2f us",t_o);
//in book solution is t_o=54.77 us. The ans is incorrect as %pi is not muliplied in ans. Formulae mentioned in correct.
I_p=(V_s-V_o)*sqrt(C/L);    printf("\npeak current through diode=%.2f A",I_p);
v_D=-V_s+V_o;    printf("\nvoltage across diode=%.0f V",v_D);