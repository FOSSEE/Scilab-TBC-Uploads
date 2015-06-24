// CAPTION: Operation_of_Travelling-WAVE_TUBE(TWT)
//chapter_no.-9,  page_no.-416
//Example_no.9-5-1

clc;

//(a) Calculate_the_gain_parameter

I0=30*(10^-3);//Beam_current
V0=3*(10^3);//Beam_voltage
Z0=10;//characteristic_impedance_of_the_helix
C=(((I0*Z0)/(4*V0))^(1/3));
disp(C,'From Eq(9-5-56) the gain parameter is =');


//(b) Calculate_the_output_power_gain_in_dB

N=50;//Crcular_length
Ap=-9.54+(47.3*N*C);
disp(Ap,'the_output_power_gain_(in_dB) is =');



//(c) Calculate_the_four_propagation_constants

f=10*(10^9);
V0=3*(10^3);
w=2*(%pi)*f;
v0=.593*(10^6)*sqrt(V0);
Be=w/v0;

r1=(-1*Be*C*(sqrt(3)/2))+%i*Be*(1+(C/2));
disp(r1,'the_first_propagtaion_constant_is =');

r2=(Be*C*(sqrt(3)/2))+%i*Be*(1+(C/2));
disp(r2,'the_second_propagtaion_constant_is =');
r3=%i*Be*(1-C);
disp(r3,'the_third_propagtaion_constant is =');

r4=-1*%i*Be*(1-((C^3)/4));
disp(r4,'the_fourth_propagtaion_constant is =');



