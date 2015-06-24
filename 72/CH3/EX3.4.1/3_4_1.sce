//CAPTION: Line_impedance

//chapter_no.-3,  page_no.-99
//Example_no.3-4-1

clc;


//(a)Calculate_the_input_impedance


syms x ;//x_is_wavelength
Bd=(((2*%pi)/x)*(x/4));
disp(Bd,'from_Eq(3-4-26)_the_line_that_is_2.25_wavelengths_long_looks like_a_quarter-wave line,then Bd= ');

R0=50;//input_impedance
Rl=75;//load_resistance
Zin=(R0^2)/Rl;
disp(Zin,'From_Eq(3-4-26),the_input_impedance((in_ohms)_is = ');


//(b)Calculate_the_magnitude_of_the_instantaneous_load_voltage


R0=50;//input_impedance
Rl=75;//load_resistance
rl=(Rl-R0)/(Rl+R0);
disp(rl,'the_reflection_coefficient is =');



//(b)Calculate_the_magnitude_of_the_instantaneous_load_voltage


R0=50;//input_impedance
Rl=75;//load_resistance
rl=(Rl-R0)/(Rl+R0);
disp(rl,'the_reflection_coefficient is =');

V=30;//open-circuit_output_voltage

Vl=V*(exp(-1*%i*Bd))*(1+rl);
Vl=abs(Vl);
disp(Vl,'the_instantaneous_voltage_at_the_load(in V)_is =');



//(c) Calculate_the_instantaneous_power_delivered_to_the_load


Pl=(Vl^2)/Rl;
disp(Pl,'the_instantaneous_power_delivered_to_the_load(in W)is =');











