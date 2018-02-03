//Minimum horizontal force required to avoid slipping
//refer fig.5.15
//consider equilibrium
//taking moment about A
//0.866*NB+0.5*FB=275
//Law of friction
//FB=0.2*NB
//Thus
 NB=275/(0.866+0.5*0.2)  //N
NA=200+600-56.934  //N
FA=0.3*NA  //N
P=NB-FA  //N
printf("The required force is P=%0.2d N",P)

