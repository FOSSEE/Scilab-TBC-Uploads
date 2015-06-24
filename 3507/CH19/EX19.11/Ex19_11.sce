//chapter19
//example19.11
//page423

m=0.4
Ic=8 // A
// Pt=Pc+Ps and Ps=0.5*m^2*Pc so Pt=Pc*(1+m^2/2)
// so Pt/Pc=1+m^2/2 but P is proportional to I^2 so
// (It/Ic)^2=1+m^2/2 and thus we get

It=Ic*(1+m^2/2)^0.5

printf("antenna current for m=0.4 is = %.3f A \n",It)
