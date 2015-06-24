//chapter13,Example13_1,pg 391

//xMy -> x-mass no., M-element, y-atomic no.

M7Li3=7.018232//mass of 7li3 (amu)

Malpha=4.003874//mass of alpha particle (amu)

Mpr=1.008145//mass of proton (amu)

//reaction:- 7li3 + 1H1-> 4He2 + 4He2

delM=M7Li3+Mpr-2*Malpha//mass defect

Q=delM*931//1 amu= 931 Mev

Ey=9.15//K.E energy of product nucleus

Ex=2*Ey-Q//K.E of incident particle

printf("kinetic energy of incident proton\n")

printf("Ex=%.2f Mev",Ex)