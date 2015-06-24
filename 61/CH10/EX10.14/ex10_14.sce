//ex10.14
C_gd=3*10^-12;    //from previous question
A_v=6.5;    //from previous question
R_d=1*10^3;    //from previous question
C_out_Miller=C_gd*(A_v+1)/A_v;
f_c=1/(2*%pi*R_d*C_out_Miller);
disp(f_c,'critical frequency of the output circuit in hertz')