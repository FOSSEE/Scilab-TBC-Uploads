
//calculating deflecting torque
N=50  //no. of turns in coil
B=.12  //flux density in Wb/m^2
A=5D-4  //area of coil in m^2
I=15D-3  //current through coil
Td=N*B*A*I
mprintf("Deflecting torque=%fD-6 N-m\n",Td*10^6)
//calculating deflection of pointer
C=18D-7  //constant for spring in N-m per degree
Tc=Td  //controlling torque
theta=Tc/C
mprintf("Deflection=%d degrees", theta)

