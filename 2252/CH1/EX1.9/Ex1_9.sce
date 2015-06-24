
//refer Fig.1.20 in the textbook
//applying KVL
//for mesh  BAEFB, 4*I1+2*I2=1.5
//for mesh  BACDB, 2*I1+4*I2=1.1
a=[4 2;2 4]
b=[1.5;1.1]
i=inv(a)*b
I1=i(1,1)
I2=i(2,1)
mprintf("Current through 2 ohm resistor=%f A from B to A", I1+I2)
