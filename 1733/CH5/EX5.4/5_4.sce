//5.4
clc;
Vin=120;
Vm=2^0.5*Vin;
alph=90;
R=10;

VL=Vm*(1/(2*%pi)*(%pi-90*%pi/180+sind(180)/2))^0.5;
printf("\nRMS output voltage =%.2f V", VL) 
Po=VL^2/R;
IL=VL/R;
VA_input=IL*Vin;
pf_input=Po/VA_input;
printf(" \nInput Power factor =%.3f lagging", pf_input) 

Iavg_thy=Vm*(1+cosd(alph))/(2*%pi*R);
printf("\nAverage thyristor Current =%.2f A", Iavg_thy) 
Irms_thy=IL/2^0.5;
printf("\nRMS thyristor Current =%.3f A", Irms_thy)
Irms_load=VL/R;
printf("\nRMS Load Current =%.3f A", Irms_load)
