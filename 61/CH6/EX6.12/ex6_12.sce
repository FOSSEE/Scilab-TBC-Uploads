//ex6.12
A_v1=10;
A_v2=15;
A_v3=20;
A_v=A_v1*A_v2*A_v3;    //overall voltage gain
disp(A_v,'overall voltage gain')
A_v1_dB=gain_in_decibel_voltage(A_v1);
A_v2_dB=gain_in_decibel_voltage(A_v2);
A_v3_dB=gain_in_decibel_voltage(A_v3);
A_v_dB=A_v1_dB+A_v2_dB+A_v3_dB;
disp(A_v_dB,'total voltage gain in decibels')