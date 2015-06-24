// Example 5.2 : Consider a common Emitter circuit
I_S=10^-15; // (A)
R_C=6.8*10^3; // (ohm)
V_CC=10; // (V)
V_CE=3.2; // (V)
V_T=25*10^-3; // (V)

// 5.2a
I_C=(V_CC-V_CE)/R_C;
disp(I_C,"Collector current (A)")
V_BE=V_T*log(I_C/I_S);
disp(V_BE,"V_BE (V)")

// 5.2b
V_in=5*10^-3; // sinuosoidal input 0f peak amplitide 5mv
A_v=-(V_CC-V_CE)/V_T;
disp(A_v,"Voltage gain")
V_o=-A_v*V_in; // negative sign to make positive value of voltage gain
disp(V_o,"Amplitude of output voltage (V)")

// 5.2c
v_CE=0.3// (V)
i_C=(V_CC-v_CE)/R_C;
disp(i_C,"i_C (A)")
v_be=V_T*log(i_C/I_C); // v_BE is positive increment in v_BE
disp(v_be,"required increment (V)")

// 5.2d
v_O=0.99*V_CC;
R_C=6.8*10^3; // (ohm)
i_C=(V_CC-v_O)/R_C;
I_C=1*10^-3; // (A)
disp(i_C,"i_C (A)")
v_be=V_T*log(i_C/I_C);
disp(v_be,"negative increment in v_BE (V)")