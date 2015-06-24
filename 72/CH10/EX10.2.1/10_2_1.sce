//CAPTION:Crossed-Field_Amplifier
//chapter_no.-10,  page_no.-473
//Example_no.10-2-1

clc;

//(a) Calculate_the_induced_RF_power

Vao=2*(10^3);//Anode_dc_voltage
Iao=1.5;//Anode_dc_current
ne=.20;//Electronic_efficiency
Pgen=Vao*Iao*ne;
disp(Pgen,'the_induced_RF_power(in W)is =');




//(b) Calculate_the_total_RF_output_power


Pin=80;//RF_input_power
Pout=Pin+(Pgen);
disp(Pout,'the_total_RF_output_power(in W)is =');


//(c) Calculate_the_power_gain

g=Pout/Pin;
g=10*log10(g);//in_decibels
disp(g,'the_power_gain(in dB)is =');
