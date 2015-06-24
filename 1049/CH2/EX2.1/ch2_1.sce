clear;
clc;
B=40;
R_c=10;//ohm
V_cc=130;//V
V_B=10;//V
V_CES=1.0;//V
V_BES=1.5;//V
I_CS=(V_cc-V_CES)/R_c;//A
I_BS=I_CS/B;//A
R_B=(V_B-V_BES)/I_BS;    printf("value of R_B in saturated state= %.3f ohm",R_B);
P_T=V_BES*I_BS+V_CES*I_CS;    printf("\n power loss in transistor=%.3f W",P_T);

ODF=5;
I_B=ODF*I_BS;
R_B=(V_B-V_BES)/I_B;    printf("\nvalue of R_B for an overdrive factor 5 =%.2f ohm",R_B);
P_T=V_BES*I_B+V_CES*I_CS;    printf("\npower loss in transistor=%.2f W",P_T)

B_f=I_CS/I_B;    printf("\nforced current gain=%.0f",B_f);

