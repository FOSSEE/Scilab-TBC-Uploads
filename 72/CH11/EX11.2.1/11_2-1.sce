//CAPTION: Characteristics_of_a_Parallel_Strip_Line
//chapter_no.-11,  page_no.-505
//Example_no.11-2-1

clc;

//(a) Calculate the required width of the conducting strip
erd=6;//relative_dielectric_constant
d=4*(10^-3);//thickness
Z0=50;//characteristic_impedance

w=(377*(d))/((sqrt(erd))*Z0);
disp(w,'the_required_width_of_the_conducting_strip(in metres)is =');

//(b) Calculate_the_strip_line_capacitance

ed=8.854*(10^-12)*erd;
d=4*(10^-3);//thickness
C=(ed*w)/d;
C=C*(10^12);
disp(C,'the_strip_line_capacitance(in pF/m)is =');




//(c) Calculate_the_strip_line_inductance

uc=4*%pi*(10^-7);
d=4*(10^-3);//thickness
C=(uc*d)/w;
C=C*(10^6);
disp(C,'the_strip_line_inductance(in uH/m)is =');

//(d)Calculate_the_phase_velocity_of_the_wave_in_the_parallel_strip_line

c=3*(10^8);

vp=c/(sqrt(erd));
disp(vp,'the_phase_velocity_of_the_wave_in_the_parallel_strip_line(in m/s)is =');
















