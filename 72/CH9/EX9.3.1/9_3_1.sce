//CAPTION: Four-Cavity_Klystron
//chapter_no.-9,  page_no.-385
//Example_no.9-3-1

clc;

//(a) Calculate_the_dc_electron_velocity
V0=14.5*(10^3);
v0=.593*(10^6)*sqrt(V0);
disp(v0,'the_dc_electron_velocity(in m/s)is =');


//(b) Calculate_the_dc_phase_constant

f=(10*(10^9));
Be=(2*%pi*f)/v0;
disp(Be,'the_dc_phase_constant(in rads/m)is =');



//(c)Calculate_the_plasma_frequency

po=1*(10^-6);//dc_electron_charge_density
wp=((1.759*(10^11)*po)/(8.854*(10^-12)))^(1/2);
disp(wp,'the_plasma_frequency(in rad/s)is =');


//(d) Calculate_the_reduced_plasma_frequency_for_R=0.4

R=0.4;
wq=R*wp;
disp(wq,'the_reduced_plasma_frequency_for_R=0.4(in rad/s)is =');



//(e)Calculate_the_dc_beam_current_density

J0=po*v0;
disp(J0,'the_dc_beam_current_density(in A/m2)is =');



//(f) Calculate_the_instantaneous_beam_current_density


p=1*(10^-8);
v=1*(10^5);//velocity_perturbation
J=(p*v0)-(po*v);
disp(J,'the_instantaneous_beam_current_density(in A/m2)is =');
