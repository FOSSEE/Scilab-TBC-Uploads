
clc
//initialisation of variables
v1=1800 //ft/sec
Vb=800 //ft/sec
gama=50 //degre
alph=20//degre
beta=34.41//degre
//CALCULATIONS
V1R=v1*sind(alph) //ft/sec
V2R=v1*cosd(0.9397)//ft/sec
V2R1=V2R-Vb //ft/sec
TanB=V1R/V2R1//ft/sec
v1R=V1R/sind(beta)//ft/sec
V2=v1R*sind(gama)//ft/sec
v2R=v1R*cosd(50)//ft/sec
V2r=v2R-Vb//ft/sec
cot=V2r/V2//ft/sec
V=sqrt((V2^2)+(V2r^2))//ft/sec
//RESULTS
printf('The work per pound of steam and the axial thrust=% f ft/sec',V)
