//ex9.1
V_CC=15;
R_C=1*10^3;
R_1=20*10^3;
R_2=5.1*10^3;
R_3=5.1*10^3;
R_4=15*10^3;
R_E_1=47;
R_E_2=330;
R_E_3=16;
R_L=16;    //SPEAKER IS THE LOAD;
B_ac_Q1=200;
B_ac_Q2=B_ac_Q1;
B_ac_Q3=50;
//R_c1=R_C||[R_3||R_4||B_acQ2*B_ac_Q3*(R_E_3||R_L)] is ac collector resistance
R=(R_E_3*R_L)/(R_E_3+R_L);
R=B_ac_Q2*B_ac_Q3*R;
R=(R*R_4)/(R+R_4);
R=(R*R_3)/(R+R_3);
R_c1=(R*R_C)/(R_C+R);    //ac collector resistance
//V_B=((R_2||(B_acQ1*(R_E_1+R_E_2)))/(R_1+(R_2||B_acQ1*(R_E_1+R_E_2))))*V_CC;
//This is the base voltage;
//LET R=(R_2||(B_acQ1*(R_E_1+R_E_2)))
R=(R_2*B_ac_Q1*(R_E_1+R_E_2))/(R_2+B_ac_Q1*(R_E_1+R_E_2));
V_B=R*V_CC/(R_1+R);
I_E=(V_B-0.7)/(R_E_1+R_E_2);
r_e_Q1=25*10^-3/I_E;
A_v1=(-1)*(R_c1)/(R_E_1+r_e_Q1);    //voltage gain of 1st stage
//total input resistance of 1st stage is R_in_tot_1=R_1||R_2||B_ac_Q1*(R_E_1+r_e_Q1);
R_in_tot_1=(R_1*(R_2*B_ac_Q1*(R_E_1+r_e_Q1)/(R_2+B_ac_Q1*(R_E_1+r_e_Q1))))/(R_1+(R_2*B_ac_Q1*(R_E_1+r_e_Q1)/(R_2+B_ac_Q1*(R_E_1+r_e_Q1))));
A_v2=1;    //gain of darlington voltage-follower
A_v_tot=A_v1*A_v2;    //total gain
A_p=(A_v_tot^2)*(R_in_tot_1/R_L);    //power gain
disp(A_v_tot,'Voltage gain')
disp(A_p,'Power gain')