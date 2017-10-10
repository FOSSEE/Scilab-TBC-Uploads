
clc;
Ra=0.4;//armature resistance in ohm
Rf=200;//field circuit resistance in ohm
Vt=230;//terminal voltage for dc motor
If_1=1.1;//field current for dc generator at open circuit voltage of 210 V.
If_2=0.9;//field current for dc generator at open circuit voltage of 230 V.
Ia=24;//armature current for dc shunt motor at 1500 rpm
Ea=Vt-Ia*Ra;//counter e.m.f. for dc motor at 1500 rpm and full load
//For generated e.m.f., Ea=230 V, field current is 1.1 A & for Ea=210 V, field current is 0.9 A
//The change in generated e.m.f. is 20 V for field variation of 0.2 A & this change is linear.
//Therefore for a generated e.m.f. of Ea=220.4 V at 1500 rpm, the field current would be-
If=0.9+(0.2/20)*10.4;//0.9 A for 210 V & (0.2/20)*10.4 for remaining 10.4 V.
Rsh=Vt/If;//Shunt field resistance required for a field current(If) with terminal voltage(Vt).
Rext=Rsh-Rf;//External resistance that must be inserted in shunt field circuit
printf('The external resistance that must be inserted in shunt field circuit = %f ohm.',Rext);
