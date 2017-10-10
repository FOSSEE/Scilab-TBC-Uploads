clear
//
//given
pi=3.14
N=250
I=1.5
ls1=0.627  //mean length of steel string
la=0.0001 //length of air gap
A=4.91*10**-4  //cross sectional area of magnetic circuit
f=N*I //magnetomotive force
printf("\n Magnetomotive force= %0.0f  AT",f)
fa=1050  //fa=mmf of air gap=1050AT
fs=450    //fs=mmf of steel ring=450
//case b
u1=4*%pi*10**-7
ra=la/(u1*A) //reluctance of air gap
printf("\n The reluctance of air gap is= %0.3f  AT/Wb",ra)
flux=fa/ra
printf("\n The flux is=  %0.2f  Wb",flux)
//case c
fluxdensity=flux/A
printf("\n The flux density is= %0.5f  Wb/m**2",fluxdensity)
//case d
rs=fs/flux //reluctance of steel string
printf("\n The reluctance of steel string is= %0.6f  AT/Wb",rs)
