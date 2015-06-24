//data in question
//power transmission(W)
Pt=25000
//operating frequency(Hz)
f=12*10^9
//gain of transmitter antenna(25dB)
Gt=10^(25/10)
//gain of receiver antenna(25dB)
Gr=10^(25/10)
//distance between two radars(m)
R=10000
//surface area of target radar(m^2)
A=8
c=3*10^8
//data print
printf("\nPt=25 kW\tf=12 GHz\tGt=Gr=25 dB\tR=10 km\tA=8 m^2\n")
//equation and result
printf("\nresult:-")
//wavelength L
L=c/f
printf("\nwavelength of signal L=c/f=%.3f m",L)
Pr=Gr*Gt*Pt*A*L^2/(4*%pi*(4*%pi*R^2)^2)
printf("\nreceived power \nPr=Gr*Gt*Pt*A*L^2/(4*pi*(4*pi*R^2)^2)= %.2eW",Pr)
printf(" = %.2f pW",Pr*10^12)


