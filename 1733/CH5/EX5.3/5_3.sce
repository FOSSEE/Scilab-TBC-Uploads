//5.3
clc;
Vin=150;
Vm=2^0.5*Vin;
alph=60;
R=8;
Vavg_out=Vm*(cosd(alph)+1)/(%pi);
printf("Average output voltage over half cycle =%.2f V", Vavg_out) 
VL=Vm*(1/(2*%pi)*(%pi-60*%pi/180+sind(120)/2))^0.5;
printf("\nRMS output voltage =%.2f V", VL) 
Po=VL^2/R;
printf("\nPower output =%.1f W", Po) 
Iin=VL/R;
VA_input=Iin*Vin;
pf_input=Po/VA_input;
printf(" \nInput Power factor =%.1f lagging", pf_input) 

Iavg_thy=Vm*(1+cosd(alph))/(2*%pi*R);
printf("\nAverage thyristor Current =%.2f A", Iavg_thy) 
Irms_thy=Vm/(2*R)*(1/(%pi)*(%pi-%pi/3+sind(120)/2))^0.5;
printf("\nRMS thyristor Current =%.3f A", Irms_thy)
