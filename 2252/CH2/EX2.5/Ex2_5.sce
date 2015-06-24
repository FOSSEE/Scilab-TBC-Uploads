
C=100D-6
V=200
Q=C*V
Ct=100D-6+50D-6//total capacitance
Vt=Q/Ct
mprintf("P.D. across the combination =%f V\n", Vt)
EE1=100D-6*V^2/2
mprintf("Electrostatic energy before capacitors are connected in parallel=%f J\n", EE1)
EE2=Ct*Vt^2/2
mprintf("Electrostatic energy after capacitors are connected in parallel=%f J", EE2)
