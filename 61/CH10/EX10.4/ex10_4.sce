//ex10.4
A_v_mid=100;
//At 1Hz frequency,voltage gain is 3 dB less than at midrange. At -3dB, the voltage is reduced by a factor of 0.707
A_v=0.707*A_v_mid;
disp(A_v,'actual voltage gain at 1Hz frequency')
//At 100Hz frequency,voltage gain is 20 dB less than at critical frequency (f_c ). At -20dB, the voltage is reduced by a factor of 0.1
A_v=0.1*A_v_mid;
disp(A_v,'actual voltage gain at 100Hz frequency')
//At 10Hz frequency,voltage gain is 40 dB less than at critical frequency (f_c). At -40dB, the voltage is reduced by a factor of 0.01
A_v=0.01*A_v_mid;
disp(A_v,'actual voltage gain at 10Hz frequency')