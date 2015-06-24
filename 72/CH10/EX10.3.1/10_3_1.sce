//CAPTION: Amplitron_characteristics
//chapter_no.-10,  page_no.-478
//Example_no.10-3-1

clc;

//(a) Calculate_the_dc_electron-beam_velocity

V0=15*(10^3);//Anode_voltage
v0=.593*(10^6)*sqrt(V0);
disp(v0,'the_dc_electron-beam_velocity_(in m/s)is  =');



//(b) Calculate_the_electron-beam_phase_constant


f=8*(10^9);
w=2*%pi*f;
Be=w/v0;
disp(Be,'the_electron-beam_phase_constant(in rad/m)is  =');





//(c) Calculate_the_cyclotron_angular_frequency

em=1.759*(10^11);//em=e/m
Bo=.2;//Magnetic_flux_density
wc=(em*Bo);
disp(wc,'the_cyclotron_angular_frequency(in rad/s)is  =');


//(d) Calculate_the_cyclotron_phase_constant

Bm=wc/v0;
disp(Bm,'the_cyclotron_phase_constant(in rad/m)is  =');

//(e) Calculate_the_gain_parameter

Z0=50;//characteristic_impedance
I0=3;//Anode_current
C=((I0*Z0)/(4*V0))^(1/3);
disp(C,'the_gain_parameter is  =');