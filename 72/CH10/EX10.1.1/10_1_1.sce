//CAPTION:Conventional_Magnetron
//chapter_no.-10,  page_no.-448
//Example_no.10-1-1

clc;

//(a) Calculate_the_cyclotron_angular_frequency

em=1.759*(10^11);//em=e/m=charge_is_to_mass_ratio
B0=.336;//Magnetic_flux_density
wc=(em)*B0;
disp(wc,'The_cyclotron_angular_frequency(in rad)is =');



//(b) Calculate_the_cutoff_voltage_for_a_fixed_B0


a=5*(10^-2);//radius_of_cathode_cylinder
b=10*(10^-2);//radius_of_vane_edge_to_centre
Voc=(em*(B0^2)*(b^2)*((1-((a/b)^2))^2))/8;
Voc=Voc/(10^5);
disp(Voc,'the_cutoff_voltage_for_a_fixed_B0(in KV)is =');



//(c) Calculate_the_cutoff_magnetic_flux_density_for_a_fixed_V0


V0=26*(10^3);//Anode_voltage
Boc=(((8*V0)/em)^(1/2))/(b*(1-((a/b)^2)));
Boc=Boc*1000;
disp(Boc,'the_cutoff_magnetic_flux_density_for_a_fixed_V0(in mWb/m^2)is =');



