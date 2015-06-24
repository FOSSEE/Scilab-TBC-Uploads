//Chapter 6, Problem 3
clc
vbe=0.7                             //base to emitter voltage
vcc=20                              //supply voltage
vc=10                                //collector voltage
ic=5e-3                             //collector current
hfe=150                             //dc current gain
vbb=2
ibb=1e-3

//calculating the biasing resistors
ib=ic/hfe
rb=(vbb-vbe)/ib
r1=vbb/ibb
rf=((vc-vbb)/(ibb+ib))
rc=((vcc-vc)/(ic+ib+ibb))

disp("Biasing resistors is given by")
printf("R1 = %d Kohm\nRb = %.2f Kohm\nRc = %.2f Kohm\nRf = %.2f Kohm",r1/1000,rb/1000,rc/1000,rf/1000)
