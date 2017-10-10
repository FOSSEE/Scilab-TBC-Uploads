clc;
// in book voltages are calculated for r=0.5 not for r=0.4(as asked in question) that is why answer is differing
v=230; // supply voltage
n1=800; // speed at supply voltage
i=20; // current drawn from supply
r=0.4; // dc series motor resistance
n2=1000; // raised speed
Ea1=v-i*r; // counter EMF at 800 rpm
disp('case a');
// when magnetic circuit is saturated flux is constant.Under steady state condition full load torque=torque at any load therefore
i2=i*(n2/n1)^2; // new current drawn from supply
Ea2=Ea1*(n2/n1); // counter EMF at 1000 rpm
vt=Ea2+i2*r;
printf('Current for saturated magnetic circuit is %f A\n',i2);
printf('Voltage for saturated magnetic circuit is %f V\n',vt);
disp('case b');
// when magnetic circuit is not saturated flux is directly proportional to armature current and torque is directly proportional to square of armature current
i3=(n2/n1)*i;
Ea3=(n2*Ea1*i3)/(n1*i); // counter EMF at 1000 rpm
vt=Ea3+i3*r;
printf('Current for unsaturated magnetic circuit is %f A\n',i3);
printf('Voltage for unsaturated magnetic circuit is %f V\n',vt);
