
//for generator A
V1=240//initial terminal voltage
V2=225//final terminal voltage
Ia=120//armature current
Ra=(V1-V2)/Ia//armature resistance
//for generator B
V1=230//initial terminal voltage
V2=215//final terminal voltage
Ib=100//armature current
Rb=(V1-V2)/Ib//armature resistance
I=200//total load current
//I1+I2=I, V=240-I1*Ra, V=230-I2*Rb
//solving for V, I1 and I2
a=[1 1 0;Ra 0 1;0 Rb 1]
b=[200;240;230]
x=inv(a)*b
I1=x(1,1)
I2=x(2,1)
V=x(3,1)
mprintf("Bus-bar voltage=%f V,\nGenerator A supplies %f A,\nGenerator B supplies %f A", V,I1,I2)
