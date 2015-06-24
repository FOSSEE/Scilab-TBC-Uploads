//Example 21.5
clc;
V_max=150//in V
V_rms=(V_max)/sqrt(2)
I_max=.255//in ohm
I_rms=I_max/sqrt(2)
cos=.426
P=V_rms*I_rms*cos
disp(V_rms,"Voltage in V=")
disp(I_rms,"Current in Amps=")
disp(P,"Power in watt=")
