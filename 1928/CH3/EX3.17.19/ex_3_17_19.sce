//Chapter-3,Example3_17_19,pg 3-42

la=1*10^-2                              //air gap

r=0.5                                   //radius of ring

A=5*10^-4                               //cross section area of ring

i=5                                     //current

u=6*10^-3                               //permeability of iron

u0=4*%pi*10^-7                          //permeability of free space

N=900                                   //no of turns in the coil

//let reluctance of iron ring with air gap be S

S=la/(u0*A)+(2*%pi*r-la)/(u*A)

printf("        1) Reluctance =")

disp(S)

printf("A-T/Wb")

mmf=N*i

printf("  2) m.m.f =")

disp(mmf)

printf("Amp-turn")



