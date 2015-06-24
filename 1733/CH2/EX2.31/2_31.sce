//2.31
clc;
Vm=400*2^0.5/3^0.5;
alph=0;
Vdc_max=3*3^0.5*Vm/(2*%pi)*(1+cosd(alph));
Vdc=0.5*Vdc_max;
alph=acosd((Vdc/(3*3^0.5*Vm/(2*%pi)))-1)
printf("Firing Angle = %.2f degree", alph)
R=10;
Idc=Vdc/R;
disp('For discontinious load')
Vrms=(3^0.5*Vm)*((3/(4*%pi))*(%pi-(%pi/2)+0.5*sin(%pi)))^0.5;
printf("\nRMS value of voltage = %.2f V", Vrms)
Irms=Vrms/R;
printf("\nRMS value of current = %.2f A", Irms)
I_avg=Idc/3;
printf("\nAverage value of thyristor current = %.2f A", I_avg)
I_rms=Irms/3^0.5;
printf("\nRMS value of thyristor current = %.2f A", I_rms)
efficiency=Vdc*Idc/(Vrms*Irms);
printf("\nRectification efficiency = %.3f A", efficiency)
Irms_line_current=Irms*(120/180)^0.5;
VA_input=3*400/3^0.5*Irms_line_current;
TUF=Vdc*Idc/VA_input;
printf("\nTransformer utilization factor = %.2f ", TUF)
output_power_active=Irms^2*R;
input_power_active=output_power_active;
pf_input=input_power_active/VA_input;
printf("\ninput power factor = %.2f lagging", pf_input)