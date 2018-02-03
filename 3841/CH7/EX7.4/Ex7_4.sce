clear
//compute brake mean effective pressure
//given
T=350.
D=4**0.25
L=5
M=4
//bmep for 4-cycle engine=192*t
bmep=192*(T/(D**2)*L*M)
//bmep for 2-cycle engine
bmep2=bmep/2
printf("\n \n bmep for 4-cycle %.2f psi",bmep)
printf("\n \n bmep for 2-cycle %.2f psi",bmep)
