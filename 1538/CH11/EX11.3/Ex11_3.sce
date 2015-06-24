//example-11.2
//page no-351
//given
//shear modulous
G=25*10^9  //Pa
//shear stress
tau=50*10^6  //Pa
//lattice constant of aluminium is
a=4.05*10^-10  //m
//burger's vector for aluminium is 1/2(110)
h=1
k=1
l=0
//atomic radius of aluminium 
b=a/sqrt(h^2+k^2+l^2) // m
//as we know that
//tau=G*b/L
//so
L=G*b/tau  //m
//disloaction density is rhoD (let)
rhoD =1/L^2  // per m^2   (calculation mistake, there in book formula written is correct but calculation is wrong)
printf ("the dislocation density is %e per m^2",rhoD)
