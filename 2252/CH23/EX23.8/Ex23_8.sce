
Pin=60D+3//power input
p=1D+3//stator losses
Pg=Pin-p//air gap power
s=3/100//slip
Pm=Pg*(1-s)
Prcu=s*Pg
mprintf("Mechanical power developed by the motor=%f kW with rotor copper losses of %f kW",Pm/1000,Prcu/1000)
