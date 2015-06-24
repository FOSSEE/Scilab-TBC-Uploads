//The ac Motor Control//
//Example 15.7//
f1a=40;//intial frequency in hertz//
Pa=200;//input power of squirrel cage motor in KVA//
Pb=150;//input power to the motor after change in speed in KVA//
f1b=f1a*Pb/Pa;//frequency changed to in hertz//
printf('value of frequency changed to f1b=%fhz',f1b);
Nsa=1200;//motor initial syncronous speed in rpm//
Nsb=Nsa*f1b/f1a;
Sb=0.04;
Nb=Nsb*(1-Sb);//speed in rpm at 4% slip//
printf('\nspeed at 4 percent slip=Nb=%frpm',Nb);
Va=325;//operating voltage of induction motor in volts//
Vb=Va*f1b/f1a;//stator voltage to the motor in volts//
printf('\nvalue of stator voltage to the motor=Vb=%fvolts',Vb);
Pag=150;//power transferred from stator to rotor at 30 hz in KVA//
Ws=2*3.14*Nsb/60;
T=Pag*1000/Ws;//torque if stator drop is negligible in watts//
printf('\ntorque if stator drop is negligible=T=%fwatts',T);
P2=Sb*Pag;//rotor copper loss in KVA//
printf('\nrotor copper loss=P2=%fKVA',P2);
