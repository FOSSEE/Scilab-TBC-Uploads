//Caption:transfer_function_of_motor
//example 5.9.14
//page 114
syms Kt Kb Ra La J 
//where Ka=amplifier_gain; Kt=motor_torque_const; Ra=armature_resistance; La=armature_inductor; J=moment_of_inertia 
s=%s;
//since there are two inputs Va(s)and Tl(s).If Va(s) is held at fixed value then only effect of Tl(s) is considered and Va(s)is taken as Zero.
a=(Kt*Kb)/(Ra+s*La)
b=1/J*s
c=b/(1+b*a);
disp(-c,"Wm(s)/Tl(s)=");//negative sign indicates that an increase in Tl decreases Wm
Kb=9.55;Kt=9.55;Ra=0.75;La=0.005;J=50;
a=(Kt*Kb)/(Ra+s*La)
b=1/(J)*(1/(s))
c=b/(1+b*a);
disp(-c,"Wm(s)/Tl(s)=");//after putting values