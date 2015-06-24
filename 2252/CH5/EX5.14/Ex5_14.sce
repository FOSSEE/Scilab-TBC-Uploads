
//calculating inductance and resistance of the relay
T=.004//time constant which is time taken for the current to rise to .632 of its final steady value
I=.35/.632//final steady value
V=200//applied voltage
R=V/I
L=T*R
mprintf("Resistance of relay circuit=%f ohm\nInductance of relay circuit=%f H\n",R,L)
//calculating initial rate of rise of current 
r=V/L
mprintf("Initial rate of rise of current=%f A/s",r)
