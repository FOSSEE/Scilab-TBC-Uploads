//Chapter 6, Problem 2
clc
hfe=250                             //dc current gain
vcc=24                              //supply voltage
vbe=0.7                             //base to emitter voltage
ic=2e-3                             //collector current
vc=12                                //collector voltage

//calculation of operating point
ib=ic/hfe
rf=(vc-vbe)/ib
rc=(vcc-vc)/(ic+ib)
printf("Operating point Rc = %.3f Kohm",rc/1000)
