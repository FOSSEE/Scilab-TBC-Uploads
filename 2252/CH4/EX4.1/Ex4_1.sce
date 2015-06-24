

mu_not=4D-7*%pi
a=(3D-2)^2//cross-sectional area
La=(20-1.5-1.5)*1D-2//length of flux path in part A
mu_r=1000//relative permeability for part A
Sa=La/(mu_not*mu_r*a)
mprintf("Reluctance of part A=%f*10^4AT/Wb\n",Sa/10^4)
Lb=(17+8.5+8.5)*1D-2//length of flux path in part B
mu_r=1200//relative permeability for part B
Sb=Lb/(mu_not*mu_r*a)
mprintf("Reluctance of part B=%f*10^4AT/Wb\n",Sb/10^4)
Lg=(2+2)*1D-3//length of flux path in air gap
Sg=Lg/(mu_not*a)
mprintf("Reluctance of 2 air gaps=%f*10^4 AT/Wb\n",Sg/10^4)
S=Sa+Sb+Sg
mprintf("Total reluctance of magnetic circuit=%f*10^4 AT/Wb\n", S/10^4)
N=1000//no. of turns on each coil
I=1//current in coil
mmf=2*N*I
mprintf("mmf=%d AT\n", mmf)
flux=mmf/S
mprintf("Flux in magnetic circuit=%f*10^-4 Wb\n",flux*10^4)
flux_density=flux/a
mprintf("Flux density=%f Tesla", flux_density)
