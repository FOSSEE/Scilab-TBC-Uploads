//example-3.14
//page no-96
//given
//lattice constant for copper unit cell is 
a=3.61*10^(-10)  //m
//since the lattice structure of copper is FCC
//so the length of lattice structure (110)
r110=a*sqrt(2)  //m because r110=sqrt(a^2+a^2)
//effective no of atoms present on vector OA is
Ne110=(1/2+1+1/2)   //1/2 is for the atoms at corners of diagonal OA and 1 is for the atom at the centre of diagonal OA
//therefore linear density of atoms along (110) in copper unit cell is
invr110=Ne110/r110  //atoms per m
//so the length of lattice structure (111)
r111=a*sqrt(3)  //m because r111=sqrt(a^2+a^2+a^2)
//effective no of atoms present on vector OB is
Ne111=(1/2+1/2)   //1/2 is for each atoms at corners of diagonal OB
//therefore linear density of atoms along (111) in copper unit cell is
invr111=Ne111/r111  //atoms per m
printf ("the linear density of atoms along (110) and (111) are %f atoms/mm and %f atoms/mm resp",invr110,invr111)
