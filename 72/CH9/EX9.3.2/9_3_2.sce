//CAPTION:Operation_of_a_Four-Cavity_Klystron
//chapter_no.-9,  page_no.-386
//Example_no.9-3-2

clc;

//(a) Calculate_the_dc_electron_velocity
V0=18*(10^3);
v0=.593*(10^6)*sqrt(V0);
disp(v0,'the_dc_electron_velocity(in m/s)is =');


//(b) Calculate_the_dc_electron_phase_constant

f=(10*(10^9));//Operating_frequency
w=2*%pi*f
Be=w/v0;
disp(Be,'the_dc_electron_phase_constant(in rads/m)is =');



//(c) Calculate_the_plasma_frequency

po=1*(10^-8);//dc_electron_beam_current_density
wp=((1.759*(10^11)*po)/(8.854*(10^-12)))^(1/2);
disp(wp,'the_plasma_frequency(in rad/s)is =');


//(d) Calculate_the_reduced_plasma_frequency_for_R=0.5

R=0.5;
wq=R*wp;
disp(wq,'the_reduced_plasma_frequency_for_R=0.5(in rad/s)is =');



//(e) Calculate_the_reduced_plasma_phase_constant

Bq=wq/v0;
disp(Bq,'the_reduced_plasma_phase_constant(in rad/m)is =');




//(f) Calculate_the_transit_time_across_the_input_gap

d=1*(10^-2);//gap_distance
t=d/v0;
t=t*(10^9);
disp(t,'the_transit_time_across_the_input_gap(in ns)is =');




//(g) Calculate_the_electron_velocity_leaving_the_input_gap

V1=10;
Bi=1;//beam_coupling_coefficient
Vt1=v0*(1+(((Bi*V1)/(2*V0))*sin(w*t*(10^-9))));
disp(Vt1,'the_electron_velocity_leaving_the_input_gap(in m/s)is =');


