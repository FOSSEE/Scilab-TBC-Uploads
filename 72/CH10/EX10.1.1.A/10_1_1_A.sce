// CAPTION: Pulsed_Magnetron
//chapter_no.-10,  page_no.-452
//Example_no.10-1-1A

clc;

//(a) Calculate_the_angular_resonant_frequency

f=9*(10^9);//Operating_frequency
wr=2*%pi*f;
disp(wr,'the_angular_resonant_frequency(in rad)is =');


//(b) Calculate_the_unloaded_quality_factor


C=2.5*(10^-12);//vane_capacitance
Gr=2*(10^-4);//Resonator_capacitance
Qun=wr*C/Gr;
disp(Qun,'the_unloaded_quality_factor');




//(c) Calculate_the_loaded_quality_factor


C=2.5*(10^-12);//vane_capacitance
Gr=2*(10^-4);//Resonator_capacitance
Gl=2.5*(10^-5);//loaded_capacitance
Ql=wr*C/(Gl+Gr);
disp(Ql,'the_loaded_quality_factor');



//(d) Calculate_the_external_quality_factor


C=2.5*(10^-12);//vane_capacitance
Gl=2.5*(10^-5);//loaded_capacitance
Qex=wr*C/Gl;
disp(Qex,'the_external_quality_factor');


//(e) Calculate_the_circuit_efficiency

n=(1/(1+(Qex/Qun)));
n=n*100;
disp(n,'the_circuit_efficiency(in %) is=');


//(f) Calculate_the_electronic_efficiency


V0=5.5*(10^3);//Anode_Voltage
I0=4.5;//Beam_current
Plost=18.5*(10^3);//power_loss
ne=((V0*I0)-(Plost))/(V0*I0);
ne=ne*100;
disp(ne,'the_electronic_efficiency(in %) is=');
