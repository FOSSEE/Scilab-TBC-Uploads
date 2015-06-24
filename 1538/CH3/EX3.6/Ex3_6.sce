//example-3.6
//page no-80
//given
//density of iron
rho=7.86  //gm/cm^3
//atomic weight of iron
Aw=55.85
//iron has BCC unit structure
Ne=2
//avogadros no.
Na=6.023*10^(23) 
//side of the unit cell
a=(Aw*Ne/(Na*rho))^(1/3)  //cm
//atomic radius
r=3^(1/3)*a/4*10^8  //A
printf ("the atomic radius of iron is %f A",r)
