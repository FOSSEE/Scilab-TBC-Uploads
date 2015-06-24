//Chapter 6, Problem 9
clc
id=-5e-3                             //drain current in ampere
vds=-10                              //drain to source voltage
vcc=-24                              //supply voltage
idss=8e-3                           //drain–source current when the gate and source are shorted
vp=-6                               //pinch-off voltage
vgs=2.3                             //gate to source voltage

//calculating the biasing resistors
rs=-vgs/id
vs=-vgs
vd=vds+vs
rd=((vcc-vd)/id)

disp("Since IG = 0, RG = 1 Mohm (approx)")
printf("\nRs = %.2f ohm\nRd = %.2f ohm\n\n",rs,rd)
