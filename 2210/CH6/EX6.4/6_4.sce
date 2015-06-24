//Chapter 6, Problem 4
clc
vbe=0.7                             //base to emitter voltage
ic=1e-3                            //collector current
vc=6                               //collector voltage
hf1=100                             //dc current gain
hf2=250                             //dc current gain
vcc=12                              //supply voltage
vbb=1.5
ibb=0.5e-3

//calculating the biasing resistors
hfe=sqrt(hf1*hf2)
ib=ic/hfe
rb=((vbb-vbe)/ib)
r1=vbb/ibb
rf=((vc-vbb)/(ibb+ib))
rc=((vcc-vc)/(ic+ib+ibb))

disp("Biasing resistor is given by\n")
printf("R1 = %d Kohm\nRb = %.2f Kohm\nRc = %.2f Kohm\nRf = %.2f Kohm",r1/1000,rb/1000,rc/1000,rf/1000)

