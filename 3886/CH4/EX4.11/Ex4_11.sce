//Analyse the truss by method of tension coefficient to determine the forces 
//Refer fig.4.19
//Consider entire structure
//Taking moment about A
YD=(40*2+50*6+30*4*sind(60)+60*4)/8
XA=-30  //kN
YA=40+50+60-90.49  //kN
//Take A as origin and determine co-ordinates of all other point
//Consider equilibrium of individual joints
//Joint A
tAB=-(59.51/3.464)
FAB=tAB*4  //kN
tAE=64.36/4
FAE=tAE*4  //kN
//Joint B
tBE=-11.547+17.18
FBE=tBE*4  //kN
tBC=0.5*(-17.18-5.637)
FBC=tBC*4  //kN
//Joint C
tCD=-(14.434+37.818)/2
FCD=4*tCD  //kN
tCD=4  //kN
tCE=-14.434-tCD
FCE=11.692*4  //kN
//Joint D
tDE=-0.5*(-26.126)
FDE=tDE*4  //kN
printf("The forces in different members are:-\nAB=%.2d kN\nBC=%.2d kN\nCD=%.2d kN\nDE=%.2d kN\nEA=%.2d kN\nEB=%.2d kN\nEC=%.2d kN",FAB,FBC,FCD,FDE,FAE,FBE,FCE)

