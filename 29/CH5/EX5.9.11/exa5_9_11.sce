//Caption:overall_transfer_function_of_positional_control_system
//example 5.9.11
//page 109
syms Ka Ke Kb Kt Jeq feq Ra N1 N2
//where Ka=amplifier_gain; Ke=error_detector_gain; Kb=motor_back_emf_const; Kt=motor_torque_const; Ra=armature_resistance;  Jeq=moment_of_inertia; feq=coeff_of_viscous_friction; 
s=%s;
Kt=.0001;Ra=0.2;Jeq=.0001;feq=.0005;Ka=10;Ke=2;Kb=0.0001;f=0.1;
a=(Ka*Ke); // in series
b=Kt/(s*Ra*(Jeq*s+feq));
c=b/(1+b*s*Kb);
d=(a*c);  // in series
f=0.1;
g=(d*f); // in series
h=g/(1+g);
disp(h,"C(s)/R(s)=");//overall_transfer_function_after substituting value in above equation
