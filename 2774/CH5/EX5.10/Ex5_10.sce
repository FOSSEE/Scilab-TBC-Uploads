clc
// initialization of variables
T1=300+273 // initial temperature in kelvin
P1=600 // initial pressure in kPa
P2=40 // final pressure in kPa

//solution
//please refer to steam table for values
v1=0.4344 // specific volume from steam table @ 573k and 600 kPa
v2=v1 // rigid container
u1=2801 // specific internal energy from steam table @ 573k and 600 kPa
s1=7.372 // specific entropy @ 600 kPa and 573 K

vg2=0.4625 // specific volume of saturated vapour @ 40 kPa and 573 K
vf2=0.0011 // specific volume of saturated liquid @ 40 kPa and 573 K
sf2=1.777 // specific entropy of saturated liquid @ 40 kPa and 573 K
sg2=5.1197 // specific entropy of saturated vapour @ 40 kPa and 573 K
x=(v2-vf2)/(vg2-vf2)// quality of steam using pure substance relation

s2=sf2+x*sg2 // overall specific enthalpy at quality 'x' 
delS=s2-s1 // entropy change
printf(" The entropy change  is %0.3f kJ/kg.K \n ",delS)

//heat transfer
uf2=604.3 //specific internal energy of saturated liquid @ 40 kPa and 573 K
ug2=1949.3 //specific internal energy of saturated vapour @ 40 kPa and 573 K
u2=uf2+x*ug2 //specific internal energy @ quality x
q=u2-u1 // heat transfer in kJ/kg from first law as W=0
printf(" The heat transfer is %.0f kJ/kg",q)
// the answers are approximated in textbook but here they are precise thus minute difference is there





