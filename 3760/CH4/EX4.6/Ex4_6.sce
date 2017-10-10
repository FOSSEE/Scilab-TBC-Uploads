clc;
Vt=230;//terminal voltage of dc shunt machine
Il=40;//Line current
Ra=0.5;//Armature circuit resistance
Rf=115;//Field circuit resistance
//GENERATOR OPERATION
If=Vt/Rf;//field current
Ia1=If+Il;//armature current
Ea1=Vt+Ia1*Ra;//generated emf
//Ea1=k*Ng*phi ....(1), where Ng is the generator speed & phi is flux per pole proportional to If
//MOTOR OPERATION
Ia2=Il-If;//armature current
Ea2=Vt-Ia2*Ra;//generated emf
//Ea2=k*Nm*phi ....(2), where Nm is the motor speed & phi is flux per pole proportional to If
//From equation (1)&(2), (Ea1/Ea2)=((Ng*phi)/(Nm*phi))
N=Ea1/Ea2;//ratio of speed of generator to motor,N=Ng/Nm
printf('The ratio of speed as a generator to the speed as a motor is %f.',N)
