//Chapter 6, Problem 8
clc
id=2e-3                             //drain current in ampere
vds=12                              //drain to source voltage
vcc=24                              //supply voltage
idss=8e-3                           //drain–source current when the gate and source are shorted
vp=-6                               //pinch-off voltage

//calculating the biasing resistors
vgs=vp*(1-sqrt(id/idss))
rs=-vgs/id
vs=-vgs
vd=vds+vs
rd=((vcc-vd)/id)

disp("Since IG = 0, RG = 1 Mohm (approx)")
printf("Rs = %d ohm\nRd = %.2f ohm\n\n",rs,rd)

