
//both the coils draw lagging currents, hence both are inductive
//for coil A
Va=10//voltage applied
Ia=2//current drawn
Za=Va/Ia
pf=.8//power factor
Ra=pf*Za
Xa=sqrt(Za^2-Ra^2)
//for coil B
Vb=5//voltage applied
Ib=2//current drawn
Zb=Vb/Ib
pf=.7//power factor
Rb=pf*Zb
Xb=sqrt(Zb^2-Rb^2)

Rt=Ra+Rb//total resistance of circuit
Xt=Xa+Xb//total reactance of circuit
Z=sqrt(Rt^2+Xt^2)
V=Ia*Z
pf=Rt/Z
mprintf("Voltage to be applied to the circuit of coils A and B in series=%f V and pf=%f lagging",V,pf)
