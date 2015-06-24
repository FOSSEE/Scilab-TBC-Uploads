
//refer Fig. 1.10 in the textbook
//applying KCL, I1+I2=20; -I2+I3=30
//applying KVL
//for mesh ABGHA, -0.1*I2+20*R1=108
//for mesh BCFGB, 0.3*I2+20*R1-30*R2=0
//for mesh CDEFC, 0.2*I2+30*R2=114
a=[-0.1 20 0;0.3 20 -30;0.2 0 30]
b=[108;0;114]
x=inv(a)*b
I2=x(1,1)
R1=x(2,1)
R2=x(3,1)
I1=20-I2
I3=30+I2
mprintf("R1=%f ohm, R2=%f ohm, I1=%f A, I2=%f A, I3=%f A", R1, R2, I1, I2, I3)
