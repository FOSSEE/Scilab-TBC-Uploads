clc;
// Chapter 2 Switched communication systems
//Example 2.2, page no 125
//given
Io=4*10^-3 //rqueired operating current
N1=10000 //no of turns in the main winding
R1=645 //resistence of the main winding in ohms
N2=200 //no of turns in auxillary winding
B=2 //spacing bias
Iaux=B/N2 //maximum auxillary current
mprintf('maximum auxillary current is:%f mA\n',Iaux*1e3)
MMFaux=N2*Iaux //MMF in the auxillary winding
mprintf('MMF in the auxillary winding is:%fAT \n',MMFaux)
MMFop=Io*N1 //operating MFF in main winding
mprintf( ' MMF in main winding is:%f AT \n',MMFop)
MMFnet=MMFop+(0.1*MMFop) //net MMF required in main winding
mprintf('net MMF required in main winding is:%f AT \n',MMFnet)
Iop=MMFnet/N1 //operating current needed
mprintf('operating current needed is:%f mA \n',Iop*1e3)
V=Iop*R1 //working voltage in volts
mprintf('working voltage is:%f volts \n',V)
