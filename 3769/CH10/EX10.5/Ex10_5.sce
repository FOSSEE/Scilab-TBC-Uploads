clear
//given
M=8
d=0.2
u=4*%pi*10**-7

//Calculation
B=u*2*M/(4*%pi*d**3)
Beqa=B/2.0

//Result
printf("\n (i) Magnetic induction at axial point %0.3f  *10**-4 T", B*10**4)
printf("\n (ii) Magnetic induction at equatorial point is %0.3f  *10**-4 T",Beqa*10**4)
