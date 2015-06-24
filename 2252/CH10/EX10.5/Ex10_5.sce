
N=80  //no. of turns in coil
B=.5  //flux density
A=15D-4  //area of coil
Tc=2D-4  //controlling torque at full scale deflection
Td=Tc  //under final steady condition
I=Td/(N*B*A)
n=100  //no. of divisions
v=2  //voltage measured per division
V=n*v  //at full scale deflection
R=V/I
mprintf("Series resistance=%f ohm",R)
