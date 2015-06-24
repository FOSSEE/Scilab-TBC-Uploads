//ex12.8
f_c_ol=100;
A_ol_mid=100000;
f=0;
A_ol=open_loop_gain(A_ol_mid,f,f_c_ol)
disp(A_ol,'open loop gain when f=0Hz');
f=10;
A_ol=open_loop_gain(A_ol_mid,f,f_c_ol)
disp(A_ol,'open loop gain when f=10Hz')
f=100;
A_ol=open_loop_gain(A_ol_mid,f,f_c_ol)
disp(A_ol,'open loop gain when f=100Hz')
f=1000;
A_ol=open_loop_gain(A_ol_mid,f,f_c_ol)
disp(A_ol,'open loop gain when f=1000Hz')