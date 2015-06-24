
//by Superposition Theorem
//consider 2 V battery alone 
R1 =(3+1)*2/(3+1+2)  //equivalent resistance of Raf, Rfg, Rab
R2 =(1+R1)*12/(1+R1+12)  //equivalent resistance of Rad, R1, Rde
R=1+2+R2  //total resistance of the circuit
I1=2/R
I2=I1*12/(1+R1+12)
I3=I2*4/(2+4)  //current through 2 ohm
//consider 4 V battery alone
I4=34/71  //current through 2 ohm
I=I3+I4
mprintf("By Superposition Theorem, current through the 2 ohm resistance is %f A from A to B\n", I)
//by Thevenin's Theorem
//applying KCL
//for mesh CDHIC, 15*i1+12*i2=2
//for mesh DEGHD, 12*i1+17*i2=4
a=[15 12;12 17]
b=[2;4]
i=inv(a)*b
i1=i(1,1)
i2=i(2,1)
Vab=4-3*i2-i2
R1=(1+2)*12/(1+2+12)  //R1 is equivalent resistance of Rcd, Rci, Rdh
R=(1+R1)*(3+1)/(1+R1+3+1)  //thevenin's equivalent resistance
I=Vab/(R+2)
mprintf("By Thevenin Theorem, current through 2 ohm resistance is %f A from A to B\n", I) 
//by Maxwell Mesh Analysis
//applying KVL
//for mesh CDEHC, 15*I1-12*I2=2
//for mesh DABED, -12*I1+15*I2+2*I3=0
//for mesh AFGBA, 2*I2+6*I3=4
a=[15 -12 0;-12 15 2;0 2 6]
b=[2;0;4]
i=inv(a)*b
I1=i(1,1)
I2=i(2,1)
I3=i(3,1)
mprintf("By Maxwell Mesh Analysis, current through 2 ohm resistance is %f A from A to B ", I2+I3)


