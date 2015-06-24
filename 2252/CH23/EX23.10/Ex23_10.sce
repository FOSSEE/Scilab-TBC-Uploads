
f=50//frequency
P=6//no. of poles
Ns=120*f/P//synchronous speed in rpm
Nr=950//speed at which the motor is running in rpm
s=(Ns-Nr)/Ns//slip
Pm=3.73D+3//mechanical power developed by the motor
//iron losses in the rotor are neglected
Prcu=s*Pm/(1-s)//rotor copper loss
P1=Pm+Prcu//rotor input
P=.25D+3//stator losses
P2=P1+P
mprintf("Stator input to the 3-phase induction motor=%f kW\n",P2/1000)
