//Example11.1//
Ni=0.55;//wt % // steel and nominal alloy content
Cr=0.50;//wt % //steel and nominal alloy content
Mo=0.20;//wt % //steel and nominal alloy content
C=0.30;//wt %//steel and nominal alloy content
a=100-(Ni+Cr+Mo+C)
mprintf("a = %f g Fe ",a)
a1=55.85;//g /mol // atomic mass of iron
b=0.6023*10^24;//atoms/ mol //Avagardo's constant
NFe=(a/a1)*b
mprintf("\nNFe = %e atoms",NFe)
//similarly
c=58.71;//g/mol // atomic mass of nickel
Nni=(Ni/c)*b
mprintf("\nNni = %e atoms",Nni)
d=52.00;//g/mol // atomic mass of chromium
NCr=(Cr/d)*b
mprintf("\nNCr = %e atoms",NCr)
e=95.94;//g/mol //atomic mass of Molybdenum
NMo=(Mo/e)*b
mprintf("\nNMo = %e atoms",NMo)
f=12.01;//g/mol //atomic mass of Carbon
NC=(C/f)*b
mprintf("\nNC = %e atoms",NC)
//so in a 100-g there shold be
Ntotal=NFe+Nni+NCr+NMo+NC
mprintf("\nNtotal = %e atoms",Ntotal)
//The atomic fraction of each alloying element is then
XNi=Nni/Ntotal
mprintf("\nXNi = %e ",XNi)
XCr=NCr/Ntotal
mprintf("\nXCr = %e",XCr)
XMo=NMo/Ntotal
mprintf("\nXMo = %e",XMo)
Xc=NC/Ntotal
mprintf("\nXc = %e",Xc)
XNi=5.19*10^-3;//atoms
XCr=5.32*10^-3;//atoms
XMo=1.16*10^-3;//atoms
//which for a 100000 atom alloy gives
h=10^5;//atoms //given
NNi=XNi*h
mprintf("\nNNi = %i atoms",NNi)
NCr=XCr*h
mprintf("\nNCr = %i atoms",NCr)
NMo=XMo*h
mprintf("\nNMo = %i atoms",NMo)
Nc=Xc*h
mprintf("\nNc = %i atoms",Nc)

