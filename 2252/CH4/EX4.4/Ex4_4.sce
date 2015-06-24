
phi=.26D-3//flux
d=2D-2//diameter of circular cross-section of ring
A=%pi*d^2/4
B=phi/A
H=740//ampere turns per length of flux path corresponding to B as obtained from B-H curve of cast steel
L=90D-2//length of mean flux path in the cast steel ring
AT=H*L
N=800//no. of turns of the coil wound on the ring
I=AT/N
mprintf("Current in the coil=%f A\n",I)
Lg=2D-3//length of air gap
Li=L-Lg//length of mean flux path in ring
mu=B/H
Bg=AT/(Li/mu+.796*Lg*1D+6)
flux=Bg*A
mprintf("Magnetic flux produced=%f*10^-4 Wb\n",flux*1D+4)
//calculating value of current which will produce the same flux as in (i)
ATi=H*Li
ATg=.796*B*Lg*1D+6
AT=ATi+ATg
I=AT/N
mprintf("Current in the coil which will give the same flux as in (i)=%f A",I)
