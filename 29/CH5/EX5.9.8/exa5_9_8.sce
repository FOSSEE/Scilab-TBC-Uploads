//Caption:overall_transfer_function_of_given_system
//example 5.9.8
//page 105
syms Rf Ra Kb Jm Lf La Kg Kt Jl s
Rf=1000;//field_resistance
Lf=100;//field_inductanc
Kg=1000;//generator_field_constant
Ra=20;//armature_resistance
La=0.1;//armature_inductance
Kt=1.2;//motor_torque_const
Kb=1.2;//motor_back_emf_const
Jl=0.00003;//moment_of_inertia
Jm=0.00002;//coeff_of_viscous_friction
a=Kt/(Ra+s*La);
b=1/((Jm+Jl)*s);
c=(a*b);
d=c/(1+c*Kb);
e=Kg/(Rf+s*Lf);
f=(d*e);
f=simple(f)
disp(f,"wss(s)/Vf(s)=");

//steady state value
disp("under steady state condition, on putting s=0 in expression f,we get:")
disp("Vf=1.2*wss")