//5.12
clc;
R=15;
Vrms_input_phase=415/3^0.5;
VL=3^0.5*2^0.5*Vrms_input_phase*(1/(%pi)*(%pi/6-60*%pi/(180*4)+sind(120)/8))^0.5;
printf("\nRMS value of output voltage per phase=%.2f V", VL)
Po=3*VL^2/R;
printf("\nPower output =%.1f W", Po) 
I_line=VL/R;
printf("\nLine Current =%.2f A", I_line)
VA_input=3*Vrms_input_phase*I_line;
pf_input=Po/VA_input;
printf("\nInput Power Factor =%.3f lagging", pf_input)