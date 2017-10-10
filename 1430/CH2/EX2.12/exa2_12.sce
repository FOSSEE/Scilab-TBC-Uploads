// Example 2.12
// Thevenin Parameter from a v-i Curve
// From v-i curve obtained from Pspice simulation we get two equations,
x=[1 0.981;1 0.128]\[-0.491;-6.395]//Matrix Method for solving simultaneous equations
v_oc=x(1,1);// Open-Circuit Voltage
R_t=x(2,1);// Thevinin Resistance
i_sc=v_oc/R_t;// Short Circuit Current
disp(v_oc,"Open Circuit Voltage(in Volts)=")
disp(i_sc,"Short Circuit Current(in Amps)=")
disp(R_t,"Thevenin Resistance(in Ohms)=")
