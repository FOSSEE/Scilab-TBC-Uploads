clear
//
//given
hp=75
v=415
n=0.9
pf=0.85
op=75*746 //since its horse power
ip=op/n
ilv=ip/(1.732*v*pf) //line current on low voltage start side
a=(6600*1.732)/415 //given in question
ihv=ilv/a
printf("\n ihv= %0.1f  A",ihv)
