//Chapter 6, Problem 11
clc
id=5e-3                             //drain current in ampere
vds=10                              //drain to source voltage
vcc=18                               //supply voltage
vs=0.1*vcc                            //source voltage
vgs=3.2                               //gate to source voltage
r2=220e3                             //resistance in ohm based upon d.c. input resistance needs

//calculating the biasing resistors
rs=vs/id
vg=vgs+vs
r1=(r2*(vcc-vg)/vg)
vd=vds+vs
rd=((vcc-vd)/id)

printf("\nRs = %d ohm\nRd = %.2f ohm\n\n",rs,rd)
printf("\nR1 = %d Kohm\nR2 = %.2f Kohm\n\n",r1/1000,r2/1000)
