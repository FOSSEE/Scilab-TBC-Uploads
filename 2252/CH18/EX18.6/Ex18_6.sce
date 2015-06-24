
Ra=.03//armature resistance of each generator
Rsh=60//field resistance of each generator
I=4500//total load current
//I1+I2=4500, Ish=V/60
//Ia1=I1+V/60
//Ia2=I2+V/60
Ea1=500//induced emf in generator 1
//500=V+Ia1*.03
Ea2=510//induced emf in generator 2
//510=V+Ia2*.03
//solving for V,I1 and I2
a=[1 1 0;.03 0 1+.03/60;0 .03 1+.03/60]
b=[4500;500;510]
x=inv(a)*b
I1=x(1,1)
I2=x(2,1)
V=x(3,1)
mprintf("Bus-bar voltage=%f V,\nLoad shared by generator 1=%f A,\nLoad shared by generator 2=%f A", V,I1,I2)
