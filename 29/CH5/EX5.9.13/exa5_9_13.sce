//Caption:overall_transfer_function_of_two_phase_ac_motor
//example 5.9.13
//page 113
syms Ka K Ktg Jeq feq  N1 N2 m
//where Ka=amplifier_gain; Ktg=tachometer_gain_const Jeq=moment_of_inertia; feq=coeff_of_viscous_friction; 
s=%s;
//from torque characterstics m and K are determined 
Ka=20; K=0.0012; Ktg=0.2; Jeq=0.00015; feq=0.0001;m=-0.0003;
a=K/(Jeq*s+(feq-m));
b=N1/N2;
b=0.1;
c=(Ka*a)  // in series
d=(c*b)  // in series
e=d/(1+Ktg*d);
disp(e,"C(s)/R(s)=");//overall_transfer_function
