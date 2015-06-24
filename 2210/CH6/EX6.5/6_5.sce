//Chapter 6, Problem 5
clc
vbe=0.7                             //base to emitter voltage
ic=10e-3                            //collector current
vc=10                               //collector voltage
vcc=20                              //supply voltage
hfe=50                             //dc current gain


//calculating the biasing resistors
ie=ic                               //assuming for high gain transistor
ve=(10/100)*vcc
re=ve/ie
rc=((vcc-vc)/ic)
ib=ic/hfe
vbb=ve+vbe
ibb=10*ib
r2=vbb/ibb
r1=((vcc-vbb)/(ibb+ib))

disp("Biasing resistor is given by\n")
printf("R1 = %d ohm\nR2 = %.2f ohm\nRc = %.2f ohm\nRe = %.2f ohm",r1,r2,rc,re)
