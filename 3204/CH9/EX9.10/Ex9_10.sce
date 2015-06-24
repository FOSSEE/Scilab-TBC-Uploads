// Initilization of variables
W=24 // kN // Load acting at pt C
Laf=12 // m // length of the tie beam
l=4 // m// length of each member in the tie
h=3 // m // height of the slings
Lae=8 // m
// Calculations
s=sqrt((l^2)+(h^2)) // m // sloping length 
// From triangle BCD,
theta=acosd(h/s)
// SUPPORT REACTIONS
Rf=(W*l)/Laf // kN // take moment at A
Ra=W-Rf // kN // sum Fy=0
// now pass a sectio mn through the truss and consider te equilibrium of the left hand portion 
Fce=(Ra*l)/h // kN (T) // Take moment at B
Fbd=((W*l)-(Ra*Lae))/h // kN (C) // take moment at E
Fbe=(Ra-W)/cosd(theta) // kN
Fbd=(-Ra*l)/h // kN // take moment at C
Fce=((Ra*Lae)-(W*l))/h // kN (T) // take moment at D
Fcd=(W-Ra)/cosd(theta) // kN (T) // sum Fy=0
// Resuts
clc
printf('(1) The axial force in the bar CE (Fce) is %f kN \n',Fce)
printf('(2) The axial force in the bar BD (Fbd) is %f kN \n',Fbd)
printf('(3) The axial force in the bar BE (Fbe) is %f kN \n',Fbe)
printf('(4) The axial force in the bar CD (Fcd) is %f kN \n',Fcd)
