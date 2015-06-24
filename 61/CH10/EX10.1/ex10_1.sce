//ex10.1
//P out/P in=250;
A_p_dB=gain_in_decibel_power(250)
disp(A_p_dB,'Power gain when power gain is 250')
A_p_dB=gain_in_decibel_power(100)
disp(A_p_dB,'Power gain when power gain is 100')
A_v_dB=gain_in_decibel_voltage(10)
disp(A_v_dB,'Voltage gain when voltage gain is 10')
A_v_dB=gain_in_decibel_power(0.5)
disp(A_v_dB,'Power gain when voltage gain is 0.5')
A_v_dB=gain_in_decibel_voltage(0.707)
disp(A_v_dB,'Voltage gain when voltage gain is 0.707')
