D=100//thickness of slab, in mm
l=3//span of slab, in m
s=0.23//thickness of support, in m
Lef=l+s//effective span, in m
W=5//UDL, in kN/m
cover=15//in mm
R=W*Lef/2//in kN
M=(R*s/2-W*s^2/2)*10^6//bending moment at face of wall, in N-mm
//10 mm dia bars at 145 mm c/c as main steel
dia=10//in mm
c=145//spacing of reinforcement, in mm
Ast=1000*0.785*dia^2/c//in sq mm
//as alternate bars are bent up
Ast=Ast/2//available steel reinforcement at face of wall, in sq mm
d=D-10/2-cover//in mm
//assuming balanced section
z=0.87*d//in mm
sigma_st=M/(Ast*z)//in MPa
Tbd=0.6//bond stress, in MPa
Ld=dia*sigma_st/(4*Tbd)//in mm
Ld=177//round-off, in mm
mprintf("Development length required from the face of the support = %d mm",Ld)
//answer given in textbook is incorrect
