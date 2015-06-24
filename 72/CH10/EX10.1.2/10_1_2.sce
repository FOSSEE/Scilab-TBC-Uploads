//CAPTION:Linear_Magnetron
//chapter_no.-10,  page_no.-457
//Example_no.10-1-2

clc;


//(a) Calculate_the_Hall_cutoff_voltage_for_fixed_Bo
em=1.759*(10^11);//em=e/m
Bo=.01;//Magnetic_flux_density
d=5*(10^-2);//Distance_between_cathode_and_anode
Voc=(1/2)*(em)*(Bo^2)*(d^2);
Voc=Voc/1000;
disp(Voc,'the_Hall_cutoff_voltage_for_fixed_Bo(in KV)is =');




//(b) Calculate_the_Hall_cutoff_magnetic_field_density_for_fixed_Vo


V0=10*(10^3);//Anode_voltage
Boc=(1/d)*sqrt((2*V0)/(em));
Boc=Boc*1000;//in mWb
disp(Boc,'the_Hall_cutoff_magnetic_field_density_for_fixed_Vo(in mWb/m^2)is =');

