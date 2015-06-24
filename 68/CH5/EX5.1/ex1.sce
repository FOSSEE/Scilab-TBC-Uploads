// Example 5.1 : Design of given circuit with current 2mA
// BJT will be operating in active mode
B=100; // B is beta value
a=B/(B+1); // a is alpha value
v_BE=0.7; // v_BE (V) at i_C=1mA
i_C=1*10^-3:1*10^-3:2*10^-3; // (A)
I_C=2*10^-3; // (A)
V_T=25*10^-3; // (V)
V_C=5; // (V)
V_CC=15; // (V)
V_B=0; // (V)
V_RC=V_CC-V_C;// V_RC is the voltage drop across resistor R_C
R_C=V_RC/I_C;
disp(R_C,"Collector Resistance R_C (ohm)")
V_BE=v_BE+V_T*log(i_C(2)/i_C(1));
disp(V_BE,"Base emitter voltage V_BE (V) at i_C=2mA")
V_E=V_B-V_BE;
disp(V_E,"Emitter voltage V_E (V)")
I_E=I_C/a;
disp(I_E,"Emitter current I_E (A)")
R_E=(V_E-(-V_CC))/I_E;
disp(R_E,"Emitter resistance R_C (ohm)")