//ex10.3
R_in=1*10^3;
C1=1*10^-6;
A_v_mid=100;    //mid range voltage gain
f_c=1/(2*%pi*R_in*C1);
//at f_c, capacitive reactance is equal to resistance(X_C1=R_in)
attenuation=0.707;
//A_v is gain at lower critical frequency
A_v=0.707*A_v_mid;
disp(f_c,'lower critical frequency in hertz')
disp(attenuation,'attenuation at lower critical frequency')
disp(A_v,'gain at lower critical frequency')