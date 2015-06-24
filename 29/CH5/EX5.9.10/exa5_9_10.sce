//Caption:overall_transfer_function_of_given_system
//example 5.9.10
//page 108
syms Ra Kt Jm fm Kb
//where Ra=armature_resistance; Kt=motor_torque_const; Jm=moment_of_inertia; fm=coeff_of_viscous_friction; Kb=motor_back_emf_const
s=%s;
a=Kt/(s*Ra*(s*Jm+fm));
a=simple(a);
b=s*Kb;
c=a/(1+a*b);
c=simple(c);
disp(c,"Q(s)/V(s)=");//overall_transfer_function
Kt=0.183;Kb=0.183;Ra=4.8;Jm=.004;fm=0.0015;
a=Kt/(s*Ra*(s*Jm+fm));
b=s*Kb;
c=a/(1+a*b);
disp(c,"Q(s)/V(s)=");//overall_transfer_function_after substituting value in above equation