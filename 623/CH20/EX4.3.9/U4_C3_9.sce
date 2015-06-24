//variable initialization
deltaT=2.1*10^-3;                                                               //(eV)
lembda=5893*10^-8;                                                              //(Å)

//calculation
deltaV=deltaT*8065;                                                             //(cm-1)
deltalembda=deltaV*lembda^2;                                                    //(cm)

printf("\nΔλ = %.2e cm",deltalembda);
