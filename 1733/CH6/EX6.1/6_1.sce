//6.1
clc;
Vo_max=250;
Vm=Vo_max*%pi*2^0.5/(3*sin(%pi/3));
Vrms=Vm/2^0.5;
printf("RMS value of input voltage =%.1f V", Vrms)
I=50;
Irms=I*2^0.5/3^0.5;
PIV=3^0.5*Vm;
Irms_input=(I^2/3)^0.5;
Po=Vo_max*I*0.8;
Pi_per_phase=1/3*Po;
pf_input=Pi_per_phase/(Irms_input*Vrms)
printf("\nInput power factor =%.3f lagging", pf_input)