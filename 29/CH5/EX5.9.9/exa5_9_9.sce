//Caption:overall_transfer_function_of_given_system
//example 5.9.9
//page 107
syms Ka Ke Kt J f N1 N2
s=%s;
Ke=10;//error_detector_gain
Ka=100;//amplifier_transconductance
Kt=.0005;//motor_torque_const
J=.0000125;//moment_of_inertia
f=.0005;//coeff_of_viscous_friction
g=N1/N2;
g=1/20;
a=(Ka*Ke);
b=(a*Kt);
c=1/(J*s^2+f*s);
d=(c*b);
e=(g*d);
h=e/(1+e);
disp(h,"C(s)/R(s)=");//result