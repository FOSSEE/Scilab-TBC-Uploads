// Example 11.7
// Design of an Active Filter
f_l=200;
f_u=4000;
// f_l=1/(2*%pi*R1*C1) and f_u=1/(2*%pi*R_F*C_F)
// which limits the value of capacitance to
// 5nF<C_1<500nF and 0.25nF<C_F<25nF
// R_F= 1/(omega_u*C_F) and R_1=1/(omega_l*C_1)
// K=C_1/(20*C_F)
// thus i can increase the midband gain by taking large value for C_1 and small value for C_F
// thus we choose standard values for capacitors
C_1= 100*10^-9;
C_F=1*10^-9;
R_1=1/(2*%pi*f_l*C_1);
R_F=1/(2*%pi*f_u*C_F);
//Which gives
K=R_F/R_1;
disp("Required value for resistors are(in Ohms)")
disp(R_1,"R_1=")
disp(R_F,"R_F=")
