
mu_not=4D-7*%pi
Li=50d-2//length of flux path in iron
mu_r=1300//relative permeability
a=12D-4//cross sectional area
Si=Li/(mu_not*mu_r*a)
mprintf("Reluctance of iron part of magnetic circuit=%f*10^3 AT/Wb\n",Si/10^3)
Lg=.4D-2//length of flux path in air gap
Sg=Lg/(mu_not*a)
mprintf("Reluctance of air gap of magnetic circuit=%f*10^3 AT/Wb\n",Sg/10^3)
S=Si+Sg
mprintf("Total reluctance of magnetic circuit=%f*10^3 AT/Wb\n",S/10^3)
N=400+400  //total no. of turns
I=1  //current through each coil
mmf=N*I
flux=mmf/S
mprintf("Total flux=%f milliWb\n", flux*10^3)
B=flux/a
mprintf("Flux density in air gap=%f Wb/m^2", B) 
//answers vary from the textbook due to round off error
