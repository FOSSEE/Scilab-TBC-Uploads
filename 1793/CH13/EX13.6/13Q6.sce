clc
H=15
a=10
G=118
b=20
C=250
Zo=2*C*sqrt((1+sind(b))/(1-sind(b)))/G
//at z=0 Ta=0
//at z=15 
z=15
K=0.3
Ta=G*z*K*cosd(a)
Pa=(H -Zo)*Ta/2
printf('The Rankine active force Pa on the retaining wall after the tensile crack occurs = %f lb/ft',Pa)
