
f=50//frequency in Hz
P=4//no. of poles
Ns=120*f/P//synchronous speed
Nr=1420
//calculating forward slip
s=(Ns-Nr)/Ns
mprintf("Forward slip=%f p.u.\n",s)
//calculating backward slip
s1=2-s
mprintf("Backward slip s_b=%f p.u.\n",s1)
//calculating effective rotor resistance in forward branch
R2_dash=4.5
Rf=R2_dash/(2*s)
mprintf("Effective rotor resistance in forward branch=%f ohm\n", Rf)
//calculating effective rotor resistance in backward branch
Rb=R2_dash/(2*(2-s))
mprintf("Effective rotor resistance in backward branch=%f ohm", Rb)
//answers vary from the textbook due to round off error
