//Chapter-3,Example3_17_21,pg 3-43

ur=380                                  //relative permeability of air

u0=4*%pi*10^-7                          //permeability of free space

A=5*10^-4                               //cross section area of ring

n=200                                   //number of turns

d=20*10^-2                              //mean diameter of ring

l=%pi*d                                 //mean circumference of ring

phi=2*10^-3                             //magnetic flux

S=l/(u0*ur*A)                           //reluctance

//using ohm's law for magnetic circuit

//phi=N*I/S

I=S*phi/n

printf("         1) Reluctance =")

disp(S)

printf("A-T/Wb")


printf("   2) current =")

disp(I)

printf("Ampere")

