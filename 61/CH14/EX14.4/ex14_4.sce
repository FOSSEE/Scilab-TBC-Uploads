//ex14.4
R_f1=22*10^3;
R_i1=2.2*10^3;
R_f2=47*10^3;
R_i2=10*10^3;
A_v1=(R_f1/R_i1)+1;    //voltage gain of input stage
A_v2=(R_f2/R_i2)+1;    //voltage gain of output stage
A_v=A_v1*A_v2;
disp(A_v,'total voltage gain of the isolation amplifier')