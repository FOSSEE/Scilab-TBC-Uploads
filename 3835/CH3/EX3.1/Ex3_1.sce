clear
//
//given
pi=3.14
l=%pi*0.2 //l=mean length of the ring=%pi*mean diameter of the ring
A=400*10**-6 //A=cross sectional area of ring
u1=1000 //u1=relative permeability of steel
u2=4*%pi*10**-7 //relative permeability of air
R=l/(A*u1*u2) //reluctance of steel ring
printf("\n The reluctance of steel ring is= %0.0f  AT/Wb",R)
//case b
flux=500*10**-6
f=flux*R
printf("\n The magnetomotive force is= %0.0f  AT",f)
