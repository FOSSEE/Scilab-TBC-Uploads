clc
Ka= (tand(1))^2
G=16.5
cu=10
H=6
//at z=0
z=0
Ta=G*z-2*cu
//zt z=6
z=6
Ta=G*z-2*cu

zo=2*cu/G
// Before the tensile crack occurs
Pa= G*H^2/2 - 2*cu*H
printf('Pa before the tensile crack occurs = %f kN/m\n',Pa)
//After the tensile crack occurs
Pa=(H-zo)*Ta/2
printf(' Pa after the tensile crack occurs = %f kN/m',Pa)
