//CAPTION: Linear_Magnetron
//chapter_no.-10,  page_no.-459
//Example_no.10-1-2a

clc;

//(a) Calculate_the_electron_velocity_at_the_hub_surface

em=1.759*(10^11);//em=e/m
Bo=.015;//Magnetic_flux_density
d=5*(10^-2);//Distance_between_cathode_and_anode
h=2.77*(10^-2);//hub_thickness
V=em*Bo*h;
disp(V,'the_electron_velocity_at_the_hub_surface(in m/s)is =');




//(b) Calculate_the_phase_velocity_for_synchronism

disp(V,'the_phase_velocity_for_synchronism is Vph=w/B =');



//(c) Calculate_the_Hartree_anode_voltage


wB=V;//wB=w/B

Voh=((V*Bo*d))-((1/2)*(1/em)*(V^2));
Voh=Voh/1000;//in KV
disp(Voh,'the_Hartree_anode_voltage (in KV) is =');
