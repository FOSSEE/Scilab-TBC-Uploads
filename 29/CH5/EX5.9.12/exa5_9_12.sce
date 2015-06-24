//Caption:overall_transfer_function_of_given_system
//example 5.9.12
//page 111
syms Ka Ke Kf Rf Lf Jeq feq  N1 N2
//where Ka=amplifier_gain; Ke=error_detector_gain;  Kf=motor_torque_const; Rf=field_resistance; Lf=field_inductance Jeq=moment_of_inertia; feq=coeff_of_viscous_friction;
s=%s;
d=N1/N2;
Ka=10; Ke=8; Kf=0.05; Rf=5; Lf=0.25; Jeq=0.05; feq=0.075;  d=0.1;
a=(Ka*Ke);
b=Kf/(Rf+s*Lf);
c=1/(s*(Jeq*s+feq));
g=(b*c)   //in series
h=(g*a)   //in series
i=(h*d)   //in series
j=i/(1+i);
disp(j,"C(s)/R(s)=");
