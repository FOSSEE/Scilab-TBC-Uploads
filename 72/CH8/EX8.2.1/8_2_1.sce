//CAPTION: CW_Output_Power_Of_an_IMPATT_Diode
//chapter_no.-8,  page_no.-331
//Example_no.8-2-1

clc;

//(a)Calculate_the_maximum_CW_power

n=.15;//efficiency
Vomax=100;//maximum_operating_voltage
Iomax=200*(10^-3);//maximum_operating_current
Pdc=Vomax*Iomax;
P=n*Pdc;
disp(P,'the_maximum_CW_power(in Watts)is =');

//(b) Calculate_the_resonant_frequency

L=6*(10^-6);//drift-region_Length
vd=2*(10^5);//carrier_drift_velocity
f=vd/(2*L);
f=f/(10^9);
disp(f,'the_resonant_frequency(in GHz)is =');
