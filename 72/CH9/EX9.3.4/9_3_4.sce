// CAPTION:Output_Power_of_Four-Cavity_Klystron
//chapter_no.-9,  page_no.-390
//Example_no.9-3-4

clc;

//(a) Calculate_the_plasma_frequency
po=5*(10^-5);//dc_electron_beam_current_density
wp=((1.759*(10^11)*po)/(8.854*(10^-12)))^(1/2);
disp(wp,'the_plasma_frequency(in rad/s)is =');


//(b) Calculate_the_reduced_plasma_frequency_for_R=0.6

R=0.6;
f=(4*(10^9));
w=2*%pi*f;
wq=R*wp;
disp(wq,'the_reduced_plasma_frequency_for_R=0.6(in rad/s)is =');

//(c) Calculate_the_induced_current_in_the_output_cavity


Rsh=10*(10^3);//shunt_resistance_of the_cavity
Rshl=5*(10^3);//total_shunt_resistance_including_load
V0=10*(10^3);
I0=0.7;//beam_current
V1=2;//Signal_voltage
Bo=1;//Beam_coupling_coefficient
I4=(((I0*w)^3)*(Bo^6)*V1*(Rsh^2))/(8*((V0*wq)^3));
disp(I4,'the_induced_current_in_the_output_cavity(in Ampere)is =');




//(d) Calculate_the_induced_voltage_in_the_output_cavity



V4=I4*Rshl;
V4=V4/1000;
disp(V4,'the_induced_voltage_in_the_output_cavity(in KV)is =');


//(e) Calculate_the_output_power_delivered_to the_load

Pout=(I4^2)*Rshl;
Pout=Pout/1000;
disp(Pout,'the_output_power_delivered_to the_load(in KW)is =');

