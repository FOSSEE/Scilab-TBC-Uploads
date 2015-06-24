// CAPTION:Inverted_Coaxial_Magnetron
//chapter_no.-10,  page_no.-465
//Example_no.10-1-5

clc;


//(a) Calculate_the_cutoff_voltage_for_fixed_Bo
em=1.759*(10^11);//em=e/m
Bo=.01;//Magnetic_flux_density
a=3*(10^-2);//anode_radius
b=4*(10^-2);//Cathode_radius
Voc=(1/8)*(em)*(Bo^2)*(a^2)*((1-((b/a)^2))^2);
Voc=Voc/1000;
disp(Voc,'the_cutoff_voltage_for_fixed_Bo(in KV)is =');




//(b) Calculate_the_cutoff_magnetic_flux_density_for_fixed_Vo


V0=10*(10^3);//Anode_voltage
Boc=(-1/(sqrt(em)))*(sqrt(8*V0))/((a)*(1-((b/a)^2)));
disp(Boc,'the_cutoff_magnetic_flux_density_for_fixed_Vo(in Wb/m^2)is =');

