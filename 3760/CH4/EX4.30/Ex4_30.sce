clc;
//Armature reaction is neglected.
Vt=250;//Supply voltage
P=4;//No of poles
A=2;//No of parallel paths for armature conductors
Z=500;//No of armature conductors
Ra=0.25;//armature circuit resistance in ohm
Rf=125;//field resistance in ohm
phi=0.02;//flux per pole in weber
Il=14;//current drawn by motor from supply mains
Ish=Vt/Rf;//constant shunt field current
Pr=300;//rotational losses in watts
Pi=Vt*Il;//power input in watts

//PART(a)-
Ia=Il-Ish;//armature current
Ea=Vt-Ia*Ra;//counter/back emf
//Ea=(P*phi*Z*N)/(60*A)
N=(60*A*Ea)/(P*phi*Z);//speed of rotation of motor in rpm
Wm=(2*%pi*N)/60;//angular velocity of motor
Pe=Ea*Ia;//electromagnetic power
Ti=Pe/Wm;//Internal torque developed in Nm.
printf('Speed of rotation of motor is %f rpm.',N);
printf('\nInternal torque developed = %f Nm.',Ti);

//PART(b)-
Psh=Pe-Pr;//shaft power
Tsh=Psh/Wm;//shaft torque
%n=(Psh/Pi)*100;//percentage eficiency
printf('\nShaft power = %f watts.',Psh);
printf('\nShaft torque = %f Nm.',Tsh);
printf('\nEfficiency of motor is %f percent.',%n);
