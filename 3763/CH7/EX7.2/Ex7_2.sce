clear
//
//
//

//Variable declaration
e=1.6*10**-19    //charge(coulomb)
new=6.8*10**15   //frequency(revolutions per second)
mew0=4*%pi*10**-7
R=5.1*10**-11     //radius(m)

//Calculation
i=(e*new)          //current(ampere)

B=mew0*i/(2*R)    //magnetic field at the centre(weber/m**2)
A=%pi*R**2
d=i*A       //dipole moment(ampere/m**2)

//Result
printf("\n magnetic field at the centre is %0.0f  weber/m**2",B)
printf("\n dipole moment is %0.0f  *10**-24 ampere/m**2",d*10**24)
