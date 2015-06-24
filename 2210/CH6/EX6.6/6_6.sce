//Chapter 6, Problem 6
clc
vbe=0.7                             //base to emitter voltage
ic=1e-3                            //collector current
vc=6                               //collector voltage
vcc=12                              //supply voltage
hf1=100                             //dc current gain
hf2=250                             //dc current gain
ibb=0.5e-3

//calculating the biasing resistors
ie=ic
hfe=sqrt(hf1*hf2)
ve=(10/100)*vcc
re=ve/ie
rc=((vcc-vc)/ic)
ib=ic/hfe
vbb=ve+vbe
r2=vbb/ibb
r1=((vcc-vbb)/(ibb+ib))

disp("Biasing resistor is given by\n")
printf("R1 = %.2f Kohm\nR2 = %.2f Kohm\nRc = %.2f Kohm\nRe = %.2f Kohm",r1/1000,r2/1000,rc/1000,re/1000)
