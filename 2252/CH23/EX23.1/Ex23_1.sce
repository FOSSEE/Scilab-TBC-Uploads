

//calculating full load speed of induction motor
P1=8//no. of poles of alternator
N=750//speed at which alternator runs
f=P1*N/120//frequency of alternator
P2=6//no. of poles of induction motor
Ns=120*f/P2//synchronous speed
s=.03//full load slip
Nr=Ns*(1-s)
mprintf("Full load speed of induction motor=%d rpm\n", round(Nr))
//calculating frequency of rotor emf
fr=s*f
mprintf("Frequency of rotor emf=%f Hz", fr)

