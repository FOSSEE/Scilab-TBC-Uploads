//Chapter-3,Example3_17_15,pg 3-40

l=30*10^-2                              //length of ring

A=1*10^-4                               //cross section area of ring

i=0.032                                 //current

phi=2*10^-6                             //magnetic flux

u0=4*%pi*10^-7                          //permeability of free space

N=300                                   //no of turns in the coil

//1) flux density

B=phi/A                                 //flux density

printf("1) Flux density in the ring =")

disp(B)

printf("Wb/m^2")

//2) magnetic intensity of ring

n=N/l                                   //no of turns per unit length

H=n*i                                   //magnetic intensity

printf("              2) magnetic intensity =")

disp(H)

printf("Amp-turn/meter")

//3) permeability and relative permeability of the ring

u=B/H

printf("      3) Permeability of the ring =")

disp(u)

printf("Wb/A-m")

ur=u/u0

printf("              4) Relative Permeability of the ring =")

disp(ur)

//4)Susceptibility

Xm=ur-1

printf("5) magnetic Susceptibility of the ring =")

disp(Xm)

