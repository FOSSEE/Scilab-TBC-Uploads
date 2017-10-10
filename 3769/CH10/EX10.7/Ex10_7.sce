clear
//Given
M=0.40
d=0.5
u=4*%pi*10**-7

//Calculation
Beqa=u*M/(4*%pi*d**3)
Baxial=2*Beqa

//Result
printf("\n Magnitude of axial field is %0.3f  T", Baxial)
printf("\n Magnitude of equatorial field is %0.3f  T",Beqa)
