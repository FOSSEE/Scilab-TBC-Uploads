
//refer Fig. 23.25 in the textbook
k1=40//current scale
Vph=400/sqrt(3)//voltage per phase
P=k1*Vph//power per phase
k2=3*P//power scale
//calculating full load stator current
P=33.6D+3//output of motor
P1=P/k2//ouput of motor to scale
//P is the corresponding operating point
OP=1.55
I1=OP*k1
phi1=28.5
mprintf("Full load stator current=%f A with %f power factor lagging\n",I1,cos(phi1*%pi/180))
//calculating efficiency at full load
PL=2.35
PX=2.75
e=PL/PX*100
mprintf("Efficiency at full load=%f percent\n",e)
//calculating max power output
NPm=2.6
mprintf("Maximum output power=%f kW\n",NPm*k2*10^-3)
//calculting max torque developed
MTm=3.12
mprintf("Maximum torque developed by the motor=%f kW",MTm*k2*10^-3)
//answers vary from the textbook due to round off error
