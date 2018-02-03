//Analyse the truss
//Refer fig. 4.20
//Consider equilibrium of entire truss
//taking moment about A
YE=(60*8-40*4)/4   //kN
XA=40  //kN
YA=60-80  //kN
//Take A as origin and determine co-ordinates of various point
//Lengths in m are
AB=4
CE=4
AE=4
ED=4
BE=4*sqrt(2)
CD=4*sqrt(2)
//Consider equilibrium of joints individually
//Joint A
tAB=5
FAB=tAB*AB  //kN
tAE=-10
FAE=tAE*AE  //kN
//Joint B
tBE=-5
FBE=tBE*BE  //kN
tBC=10-tBE
BC=4
FBC=tBC*BC  //kN
//Joint C
tCD=15
CD=4*sqrt(2)  
FCD=15*4*sqrt(2)  //kN  The answer provided in the textbook is wrong
tCE=-15
FCE=tCE*CE  //kN
//Joint D
tDE=-15
DE=4
FDE=tDE*DE  //kN
printf("The forces in different members are:-\nAB=%.2d kN\nBC=%.2d kN\nCD=%.2d kN\nDE=%.2d kN\nEA=%.2d kN\nEC=%.2d kN\nEB=%.2d kN",FAB,FBC,FCD,FDE,FAE,FCE,FBE)
