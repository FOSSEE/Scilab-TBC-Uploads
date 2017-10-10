//Example 5.6
// DC Steady-state Analysis
// Under DC steady-state means inductor acts as a short circuit while the 
// Capacitor acts as an open circuit
//Form figure 5.17(b)
i_l=30/(20+40);// Ohm's Law
v_c= (40*30)/(20+40); // Voltage divider relationship
//Energy stored in capacitor
w_c=0.5*(5*10^-6)*400;
//Energy stored in Inductor
w_l=0.5*(16*10^-3)*(0.5)^2;
// total energy stored in the circuit is 
w=w_l+w_c;
disp(i_l,"Current through the inductor(in Amps)=");
disp(v_c,"Voltage across the capacitor(in Volts)=");
disp(w_l,"Energy stored in inductor(Joules)=");
disp(w_c,"Energy stored in Capacitor(Joules)=");
