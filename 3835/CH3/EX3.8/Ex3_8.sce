clear
//
//given
r1=3.98*10**6   //reluctance of air gap in AT/Wb and the value is same for r2
r3=5.97*10**6   //reluctance of air gap in AT/Wb
//assume that current of 1A flows through 150 turns coil,for assumed directions of fluxes application of mesh current leads to matrix equations that can be simplified to:
//[flux1 flux2]=[2.36 1.41]*10**-5 Wb
//The self inductance and mutual inductance are obtained as follows:
n1=150 //number of turns
i1=1   //A
flux1=2.36*10**-5  //Wb
l1=(n1*flux1)/i1  //self inductance
printf("\n l1= %0.3f  mH",l1)
n2=200  //number of turns
flux2=1.41*10**-5
m12=(n2*flux2)/i1  //mutual inductance
printf("\n m12= %0.3f  mH",m12)
//assume that 1A of current flows through 200 turns coil
//The self inductance of the coil is determined as above using the matrix and the result is as follows
//[flux1 flux2]=[1.89 3.14]*10**-5 Wb
//Hence self and mutual inductance are computed as follows
n2=200 //number of turns
flux2=3.14*10**-5 //Wb
i2=1 //A
l2=(n2*flux2)/i2  //self inductance
printf("\n l2= %0.3f  mH",l2)
flux1=1.89*10**-5
m21=(n1*flux1)/i2  //mutual inductance
printf("\n m21= %0.3f  mH",m21)
//case b
//When the air gap l3 is closed the reluctance of the limb is zero since the permeability of the magnetic material is infinity.Thus,the limb behaves like short circuit and the entire flux passes through it.Thus,the flux linking 200 turns coil is zero and mutual inductance is zero
//case 3
W=((3.5)/2)+((6.3)/2)+2.8 //work equation in joules
printf("\n Work done= %0.5f  J",W)
