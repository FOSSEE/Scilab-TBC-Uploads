// CAPTION:Klystron_Amplifier
//chapter_no.-9,  page_no.-377
//Example_no.9-2-1

clc;

//(a) Calculate_the_input_gap_voltage_to_give_maximum_voltage_V2

disp('For_maximum_V2,_J1(X)_must_be_maximum.This_means_J1(X)=.582_at_X=1.841.The_electron_velocity_just_leaving_the_cathode_is');
X=1.841;
J1(X)=.582;
V0=10^3;
v0=.593*(10^6)*sqrt(V0);
disp(v0,'');
f=(3*(10^9));
d=1*(10^-3);//Gap_spacing_in_either_cavity
w=(2*%pi*f);
Og=(w*d)/v0;
disp(Og,'The_gap_transit_angle_(in radian)is =');
disp('The_beam-coupling_coefficient_is');
Bi=sin(Og/2)/(Og/2);
Bo=Bi;
disp(Bi,'');
disp('The_dc_transit_angle_(in radian)_between_the_cavities_is =');
L=4*(10^-2);//Spacing_between_the_two_cavities
O0=(w*L)/v0;
disp(O0,'');
disp('The_maximum_input_voltage_V1_(in Volts)_is_then_given_by =');
V1max=(2*V0*X)/(Bi*O0);
disp(V1max,'');




//(b) Calculate_the_voltage_gain

R0=40*(10^3);
Rsh=30*(10^3);//Effective_shunt_impedance_excluding_beam_loading

Av=((Bo^2)*O0*J1(X)*Rsh)/(R0*X);
disp(Av,'The_voltage_gain_is_found ,neglecting_the_beam_loading_in_the_output_cavity =');




//(c)Calculate_the_efficiency_of the _amplifier

I0=25*(10^-3);
I2=2*I0*J1(X);
V2=Bo*I2*Rsh;
efficiency=(Bo*I2*V2)/(2*I0*V0);
efficiency=100*efficiency;
disp(efficiency,'the_efficiency_of the _amplifier,neglecting_beam_loading =');


//(d)Calculate_the_beam_loading_conductance

G0=25*(10^-6);
Og=(Og*180)/%pi;
GB=(G0/2)*((Bo^2)-(Bo*cos((28.6*%pi)/180)));
disp(GB,'the_beam_loading_conductance GB (mho)is =');

RB=1/GB;
disp(RB,'then_the_beam_loading_resistance_RB (rho)is =');
disp('In_comparasion_with_RL_and_Rsho_or_the_effective_shunt_resistance_Rsh,the_beam_loading_resistance_is_like_an_open_circuit_and_thus_can_be neglected_in_the_preceding_calculations');
