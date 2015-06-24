//a
rop = 0.4; //ratio of ON time T0 to cycle time Tp
Vb =550; //rated terminal voltage of the dc motor
Ia = 30; //current drawn by the motor (in amps)
Ra = 1; //armature circuit resistance (in ohms)
ts = 5.94; //torque and speed parameter of the motor (in N-m/A)
 
Vm = rop*Vb; //average value of the armature terminal voltage 
Ea = Vm - (Ia*Ra); //induced armature voltage 

wm = Ea/ts; //motor speed (in rad/s)
disp("a")
disp(wm,"motor speed (in rad/s) = ")

//b
deltaI = 5; //change of armature current during the ON period 
La = 0.1; //armature winding inductance (in H)
To = La*deltaI/(Vb - Ea); //ON time 
Tp = To/rop; //cycle time 

f = 1/Tp ; //required pulses per second 
disp("b")
disp(f,"required pulses per second = ")

//c
rop = 0.7; //new ratio of ON time T0 to cycle time Tp
Vm = rop*Vb; //average value of the armature terminal voltage
Ea = Vm - (Ia*Ra); //induced armature voltage 

wm = Ea/ts; //motor speed (in rad/s)
disp("c")
disp(wm,"motor speed with To/Tp equal to 0.7 (in rad/s) = ")

To = La*deltaI/(Vb - Ea); //ON time 
Tp = To/rop; //cycle time 

f = 1/Tp ; //required pulses per second 
disp(f,"required pulses per second with To/Tp equal to 0.7 = ")