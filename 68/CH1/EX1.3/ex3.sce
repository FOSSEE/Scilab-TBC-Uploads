// Example 1.3 : Overall voltage gain of cthree-stage amplifier
gainloss_in=10^6/(1*10^6+100*10^3); // fraction of input signal is obtained using voltage divider rule , gainloss_in= v_i1/v_s
A_v1=10*100000/(100000+1000); // A_v1 = v_i2/v_i1 is the voltage gain at first stage
A_v2=100*10000/(10000+1000); // A_v2 = v_i3/v_i2 is the voltage gain at second stage
A_v3=100/(100+10); // A_v3 = v_L/v_i3 is the voltage gain at the output stage
A_v=A_v1*A_v2*A_v3; // A_v is the total voltage gain 
disp(A_v,"The overall voltage gain (V/V) =")
disp(20*log10(A_v),"The overall voltage gain (dB) =")
gain_src_ld=A_v*gainloss_in;
disp(gain_src_ld,"The voltage gain from source to gain (V/V) =")
disp(20*log10(gain_src_ld),"The voltage gain from source to load (dB) =")
A_i=10^4*A_v; // A_i=i_o/i_i=(v_L/100)/(v_i1/10^6)
disp(A_i,"The current gain (A/A)=")
disp(20*log10(A_i),"The current gain (dB) =")
A_p=818*818*10^4; // A_p=P_L/P_I=v_L*i_o/v_i1*i_i
disp(A_p,"The power gain (W/W) =")
disp(10*log10(A_p),"The power gain (dB) =")