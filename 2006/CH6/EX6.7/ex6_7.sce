clc;
p1=1; // Pressure of steam at state 1 in bar
T=473; // Temperature of steam at state 1 in kelvin
// (i).Pressure after compression
p2=1.5538; // Pressure after compression at (Psat)T from steam table in MPa
disp ("MPa",p2,"Pressure after compression = ","(i).Pressure after compression");
// (ii).Heat Transfer and work done during the process
// Following are from steam table 
s2=6.4323; // specific entropy of steam at state 2 in kJ/kg K
s1=7.8343; // specific entropy of steam at state 1 in kJ/kg K
u2=2595.3; // specific internal energy of steam at state 2 in kJ/kg 
u1=2658.1; // specific internal energy of steam at state 1 in kJ/kg 
q=T*(s2-s1); // Heat transfer during the process
w=q-(u2-u1); // Work done during the process
disp ("kJ",w,"Work done during the process = ","kJ",q,"Heat transfer during the process = ","(ii).Heat Transfer and work done during the process");
