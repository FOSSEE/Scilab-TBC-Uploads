//Initilization of variables
Fx=2 //lb
Fy=3 //lb
Fz=-1 //lb
rx=1 //ft
ry=-4 //ft
rz=3 //ft
//Coordinates of points
ax=3 //ft
ay=1 //ft
az=1 //ft
bx=3 //ft
by=-1 //ft
bz=1 //ft
cx=2 //ft
cy=5 //ft
cz=-2 //ft
//Calculations
Rx=ax-cx //ft
Ry=ay-cy //ft
Rz=az-cz //ft
Mx=(Ry*Fz)-(Rz*Fy) //lb-ft
My=-((Rx*Fz)-(Rz*Fx)) //lb-ft
Mz=(Rx*Fy)-(Ry*Fx) //lb-ft
E_u=sqrt((bx-cx)^2+(by-cy)^2+(bz-cz)^2) //ft
ex=(bx-cx)/E_u //ft
ey=(by-cy)/E_u //ft
ez=(bz-cz)/E_u //ft
M_lx=Mx*ex //lb-ft
M_ly=My*ey //lb-ft
M_lz=Mz*ez //lb-ft
M_l=M_lx+M_ly+M_lz //lb-ft
//Result]
clc
printf('Hence the moment about line is %f lb-ft \n',M_l)

