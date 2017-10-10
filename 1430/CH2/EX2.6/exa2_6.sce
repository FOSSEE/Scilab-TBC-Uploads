//Example 2.6
// Amplifier with a Field-Effect Transistor
//g_m=5*(10^-3); // Transconductance of voltage controlled current source

function[v_out]=FET(v_in)
g_m=5*(10^-3);
v_g=(5/6)*v_in;// from figure 2.15,using Voltage divider in Left loop
i_out=-g_m*v_g;// Using KCL in right Loop node
v_out=(6*10^3)*i_out;// Output voltage of Amplifier
endfunction

// For Example take v_in= 1 volt
V_in=1;
V_out=FET(V_in);
disp(V_out,"Output Voltage of this amplifier(in Volts)=")
