clc;
V=240; // rated voltage of dc shunt motor
n=800; // rated speed of dc shunt motor
i=50; // rated current of dc shunt motor
ra=0.2; // armature resistance
pr=0.6; // reduction in load torque as a fraction of full load torque
rg=2; // series resistance in armature circuit
fr1=0.04; // weakening of field flux at full load
fr2=0.02; // weakening of field flux at 60% of full load
Ea1=V-(i*ra); // counter EMF at rated load
ia2=(i*pr)*((1-fr1)/(1-fr2)); // armature current at reduced load torque
Ea2=V-ia2*(rg+ra); // counter EMF at reduced load torque
n2=(n*Ea2*(1-fr1))/(Ea1*(1-fr2));
printf('Motor speed at reduced load torque is %f rpm',n2);


