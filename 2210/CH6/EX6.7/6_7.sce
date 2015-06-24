//Chapter 6, Problem 7, figure 6.13
clc
vcc=24                                  //supply voltage
vds=10                                  //drain to source voltage
id=5e-3                                 //drain current
vgs=2.3                                 //gate to source voltage
vs=2.3                                  //source voltage
vp=-8                                   //pinch-off voltage
idss=10e-3                              //drain–source current when the gate and source are shorted

//calculating the biasing resistors
rs=vgs/id
vd=vds+vs
rd=(vcc-vd)/id
vgs=vp*(1-sqrt(id/idss))

disp("Since IG = 0, RG = 1 Mohm (approx)")
printf("Rs = %.2f ohm\nRd = %.2f ohm\n\n",rs,rd)

