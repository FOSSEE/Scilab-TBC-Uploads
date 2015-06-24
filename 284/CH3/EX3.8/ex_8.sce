// Chapter 3_The Semiconductor in Equilibrium
//Caption_Statistics of acceptors and donors
//Ex_8//page 110
Na=10^16   //Acceptor concentration
kT=0.0259
Nv=1.04*(10^19); 
Eav=0.045
x=0.1   //90%of acceptor atoms are ionized
y=(((1/x)-1)*4*Na/Nv);
//(T/300)^1.5*exp(-Eav/kT*(T/300))=y
//By trial and error
printf('Required temperature is 193 K')