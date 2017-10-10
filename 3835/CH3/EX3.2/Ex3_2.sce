clear
//
//given
l=0.5
A=4*10**-4
N=250
I=1.5
flux=0.25*10**-3
fluxdensity=flux/A 
f=N*I //magnetomotive force
H=(N*I)/l //magnetic field strength
pi=3.14
u1=4*%pi*10**-7
u2=fluxdensity/(u1*H)
printf("\n The flux density is= %0.3f  Wb/m**2",fluxdensity)
printf("\n The magnetomotive force is= %0.0f  AT",f)
printf("\n The magnetic field strength is= %0.0f  AT/m",H)
printf("\n The relative permeability is= %0.0f  ",u2)
//case b
//given
I=5
flux=0.6*10**-3
A=4*10**-4
N=250
l=0.5
fluxdensity=flux/A
printf("\n The flux density is= %0.1f  Wb/m**2",fluxdensity)
f=N*I  //magnetomotive force
printf("\n The magnetomotive force is= %0.0f  AT",f)
H=(N*I)/l //magnetic field stength
printf("\n Magnetic field strength= %0.0f  AT/m",H)
pi=3.14
u1=4*%pi*10**-7
u2=fluxdensity/(u1*H)
printf("\n The relative permeability is= %0.1f  ",u2)
