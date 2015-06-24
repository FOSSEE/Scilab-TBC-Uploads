//Caption:transfer_function_of_generator
//example 5.9.7
//page 105
syms E Vf Kg R L
s=%s;
//generator_field_constant_Kg=delta(e)/delta(If)
Kg=50/2;
L=2;//field_inductance
R=200;//field_resistance
//transfer function is given by : E/Vf=(Kg/R+s*L)
a=Kg/(R+s*L);
disp(a,"E(s)/Vf(s)=");

