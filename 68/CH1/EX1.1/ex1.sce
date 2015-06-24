// Example1.1: Amplifier gain, power and eficiency
// Amplifier operates at +10-V/-10-V power supply.
A_v=9/1; // sinusoidal voltage input of 1V peak and sinusoidal output voltage of 9V peak
I_o=9/1000; // 1 kilo ohms load
disp(A_v,"Voltage gain (V/V) =") 
disp(20*log10(A_v),"Voltage gain (dB) =") 
I_i=0.0001 // sinusoidal current input of 0.1mA peak
A_i=I_o/I_i;
disp(A_i,"Current gain (A/A) =")
disp(20*log10(A_i),"Current gain (dB) =")
V_orms = 9/sqrt(2);
I_orms = 9/sqrt(2);
P_L=V_orms*I_orms; // output power in mW
V_irms=1/sqrt(2);
I_irms=0.1/sqrt(2);
P_I=V_irms*I_irms; // input power in mW
A_p=P_L/P_I; 
disp(A_p,"Power gain (W/W) =")
disp(10*log10(A_p),"Power gain (dB) =")
P_dc=10*9.5+10*9.5; // amplifier draws a current of 9.5mA from each of its two power supplies
disp(P_dc,"Power drawn from the dc supplies (mW) =")
P_dissipated=P_dc+P_I-P_L;
disp(P_dissipated,"Power dissipated in the amplifier (mW)")
n=P_L/P_dc*100;
disp(n,"Amplifier efficiency in percentage")