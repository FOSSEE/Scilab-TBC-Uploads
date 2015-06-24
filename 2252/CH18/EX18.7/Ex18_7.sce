
//Let V be bus-bar voltage and I1, I2 be the currents supplied by generators 1 and 2 respectively
Il=3000//total load current
//I1+I2=Il
//for generator 1
Rsh1=30//field resistance
Ra1=.05//armature resistance
Eg1=400//induced emf
//for generator 2
Rsh2=25//field resistance
Ra2=.03//armature resistance
Eg2=380//induced emf
//Ish1=V/Rsh1
//Ish2=V/Rsh2
//Ia1=I1+Ish1
//Ia2=I2+Ish2
//Eg1=V+Ia1*Ra1;Eg2=V+Ia2*Ra2
//solving for I1,I2 and V
a=[1 1 0;Ra1 0 1+Ra1/Rsh1;0 Ra2 1+Ra2/Rsh2]
b=[Il;Eg1;Eg2]
x=inv(a)*b
I1=x(1,1)
I2=x(2,1)
V=x(3,1)
P1=V*I1
P2=V*I2
mprintf("Output of generator 1=%f kW\nOutput of generator 2=%f kW", P1/1000,P2/1000)
//answers vary from the textbook due to round off error
