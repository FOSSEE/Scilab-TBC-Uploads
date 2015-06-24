//example-19.8
//page no-569
//given
//hole density in silicon
ND=10^17  //per cm^3
//intrinsic carrier concentretion
ni=1.5*10^10  //per cm^3
//since ND>>>> ni, so ne=ND
ne=ND
//the holes concentration
nh=(ni)^2/ne  //per cm^3
printf ("the hole concentration is %f per cm^3",nh)
//relative location of EF and Ei are found from
//EF-Ei=k*Tlog (ne/ni)
//let us assume for notation
//EF-Ei=EE
//temp
T=300  //K
k=8.614*10^-5  //eV
//so now 
EE=k*T*log(ne/ni)  //eV
printf ("EF is located at %f eV away from Ei, toeards Ec side as denoted in book",EE)
