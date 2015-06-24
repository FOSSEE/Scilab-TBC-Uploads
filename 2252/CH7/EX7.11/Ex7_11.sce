
C=35D-6//capacitance
f=50//frequency
Xc=1/(2*%pi*f*C)
Z=2*Xc//voltage applied across the capacitance is equal to half of total voltage applied
R=sqrt(Z^2-Xc^2)
mprintf("Resistance of variable resistor, R=%f ohm",R)
