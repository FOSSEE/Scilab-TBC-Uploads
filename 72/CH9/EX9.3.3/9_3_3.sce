// CAPTION:Characteristics_of_Two-Cavity_Klystron
//chapter_no.-9,  page_no.-388
//Example_no.9-3-3
clc;

//(a)Calculate_the_plasma_frequency
po=1*(10^-6);//dc_electron_beam_current_density
wp=((1.759*(10^11)*po)/(8.854*(10^-12)))^(1/2);
disp(wp,'the_plasma_frequency(in rad/s)is =');


//(b) Calculate_the_reduced_plasma_frequency_for_R=0.5

R=0.5;
f=(8*(10^9));
w=2*%pi*f;
wq=R*wp;
disp(wq,'the_reduced_plasma_frequency_for_R=0.5(in rad/s)is =');

//(c) Calculate_the_induced_current_in_the_output_cavity

V0=20*(10^3);
I0=2;//beam_current
V1=10;//Signal_voltage
Bo=1;//Beam_coupling_coefficient
I2=(I0*w*(Bo^2)*V1)/(2*V0*wq);
disp(I2,'the_induced_current_in_the_output_cavity(in Ampere)is =');




//(d) Calculate_the_induced_voltage_in_the_output_cavity

Rshl=30*(10^3);//total_shunt_resistance_including_load
V2=I2*Rshl;
V2=V2/1000;
disp(V2,'the_induced_voltage_in_the_output_cavity(in KV)is =');


//(e) Calculate_the_output_power_delivered_to the_load


Rsh=10*(10^3);//shunt_resistance_of the_cavity
Rshl=30*(10^3);//total_shunt_resistance_including_load
Pout=(I2^2)*Rshl;
Pout=Pout/1000;
disp(Pout,'the_output_power_delivered_to the_load(in KW)is =');



//(f) Calculate_the_power_gain


powergain=(((I0*w)^2)*(Bo^4)*Rsh*Rshl)/(4*((V0*wq)^2));
powergain=10*log10(powergain);//powergain_in_dB
disp(powergain,'the_power_gain is =');


//(g) Calculate_the_electronic_efficiency


n=(Pout*1000)/(I0*V0);
n=n*100;
disp(n,'the_electronic_efficiency (in %)is =');