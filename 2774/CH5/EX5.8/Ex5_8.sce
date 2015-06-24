clc
// initialization of variables
T1=20+273 // initial temperature in kelvin
P1=200 // pressure in kPa
V=2 //volume in m^3
R=0.287 // gas constant for air
W=-720 // negative as work is done on air in kJ

//solution

m=(P1*V)/(R*T1)// mass of air

u1=209.1 //specific internal energy of air at 293K and 200 kPa from table E.1
s1=1.678 // by interpolation from table E.1
// change  in internal energy= work done
u2=-(W/m)+u1 // final internal energy
T2=501.2// final temperature interpolated from table E.1 corresponding to value of u2
s2=2.222 // value of s from table E.3 by interpolating from corresponding to value of u2

P2=P1*(T2/T1) // final pressure in kPa

delS=m*(s2-s1-R*log(P2/P1))// entropy change
printf(" The Entropy increase is %.3f kJ/K ",delS)



 
