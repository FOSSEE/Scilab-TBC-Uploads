//ex10.11
C_bc=2.4*10^-12;    //from previous question
A_v=99;    //from previous question
R_C=2.2*10^3;
R_L=2.2*10^3;
R_c=R_C*R_L/(R_C+R_L);
C_out_Miller=C_bc*(A_v+1)/A_v;
f_c=1/(2*%pi*R_c*C_bc);    //C_bc is almost equal to C_in_Miller
disp(R_c,'equivalent resistance in ohms')
disp(C_out_Miller,'equivalent capacitance in farads')
disp(f_c,'critical frequency in hertz')