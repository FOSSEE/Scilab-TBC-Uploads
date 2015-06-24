// Example 1.5 :  DC gain, 3dB frequency and frequency at which gain=0 of voltage amplifier

// 1.5b
R_s =20*10^3; // (ohm)
R_i =100*10^3; // (ohm)
C_i =60*10^-12; // (ohm)
u = 144; // (V/V)
R_o = 200; // (ohm)
R_L = 1000; // (ohm)
K=u/((1+R_s/R_i)*(1+R_o/R_L));
disp(K,"The dc gain (V/V)= ")
disp(20*log10(K)," The dc gain (dB) =")
w_o=1/(C_i*R_s*R_i/(R_s+R_i));
disp(w_o,"The 3-dB frequency (rad/s) =")
f_o= w_o/2/%pi;
disp(f_o,"Frequency (Hz) =")
disp(100*w_o,"unity gain frequency (rad/s)=",100*f_o,"Unity gain frequency (Hz)")