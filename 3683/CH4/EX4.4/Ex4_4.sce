b=1000//consider 1 m width of slab
D=100//depth of slab, in mm
cover=20//in mm
d=D-cover//effective depth, in mm
W=7//uniformly distributed load, in kN/m^2
dia=10//in mm
s=100//spacing of 10 mm dia bars, in mm
l=4//span, in m
V=W*l/2//in kN
Pt=1000*.785*dia^2/(s*b*d)*100//in %
Tv=(V*10^3)/(b*d)//in MPa
//for given Pt and M15 grade concrete
Tc=0.37//in MPa
//and for solid slabs
k=1.3
Tc=k*Tc//in MPa
mprintf("Nominal shear stress in slab, Tv=%f MPa\nShear strength of slab, Tc=%f MPa. As Tc > Tv, no shear reinforcement is required", Tv, Tc)
