//Chapter 6, Problem 10
clc
id=-2e-3                             //drain current in ampere
vds=-8                              //drain to source voltage
vcc=-14                               //supply voltage
vs=2.1                                  //source voltage
vp=5                                    //pinch-off voltage
idss=-6e-3                           //drain–source current when the gate and source are shorted

//calculating the biasing resistors
vgs=vp*(1-sqrt(id/idss))
rs=-vgs/id
vd=-vds+vs
rd=((vcc+vd)/id)

disp("Since IG = 0, RG = 1 Mohm (approx)")
printf("\nRs = %d ohm\nRd = %.2f ohm\n\n",rs,rd)
