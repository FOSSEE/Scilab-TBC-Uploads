//5.2
clc;
Vm=2^0.5*150;
alph=60;
R=8;
Vin=150;
Vavg_out=Vm*(cosd(alph)-1)/(2*%pi);
printf("Average output voltage =%.2f V", Vavg_out) 
disp('The average output voltage is negative only a part of positive half cycle appears at the output whereas the whole negative half cycle appears at the output')
VL=Vm*(1/(4*%pi)*(2*%pi-60*%pi/180+sind(120)/2))^0.5;
printf("\nRMS output voltage =%.2f V", VL) 
Po=VL^2/R;
printf("\nPower output =%.1f W", Po) 
Iin=VL/R;
VA_input=Iin*Vin;
pf_input=Po/VA_input;
printf(" \nInput Power factor =%.2f lagging", pf_input) 
Iavg_out=Vavg_out/R;
Iavg_input=Iavg_out;
printf(" \nAverage input current =%.2f A", Iavg_input)
disp('The average input current is negative because input current during positive half cycle is less than during negative half cycle ')