
clc;
V=230;//supply voltage in volts
Ra=0.5;//armature resistance in ohm
N=250;//rated speed of motor
I=100;//rated current in ampere
//For the separately excited dc motor torque-speed characteristics is given by Tl=500-W, where W is rotational speed in rad/sec & Tl is load torque in Nm.
//At rated load, motor counter emf is -
Ea=V-I*Ra;
//Ea=Km*Wr; Km = motor constant, Wr = rated motor speed in rad/sec
Wr=(2*%pi*250)/60;//rated motor speed in rad/sec
Km=Ea/Wr;//motor constant in V-s/rad
//Armature current at any speed W is given by-
Ia=(V-Ea)/Ra;// ie. Ia=(230-Km*W)/0.5
//Motor torque, Te=Km*Ia=(Km/0.5)*(230-Km*W)
//Under steady state, motor torque ,Te=load torque, Tl
//Thus, (Km/0.5)*(230-Km*W)=500-10*W
W=(((V*Km)/Ra)-500)/((Km^2/Ra)-10);//angular speed in rpm
N_=(W*60)/(2*%pi);//Speed in rpm
Ia_=(230-Km*W)/0.5//armature current
printf('Steady state speed of motor is %f rpm\n.',N_);
printf('Armature current drawn by motor at steady state is %f A.',Ia_);
