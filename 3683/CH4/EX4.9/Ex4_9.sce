D=120//thickness of slab, in mm
l=1.5//span of slab, in m
s=0.23//thickness of support, in m
Lef=l+s//effective span, in m
W1=3//UDL, in kN/m^2
cover=15//in mm
sigma_cbc=5//in MPa
sigma_st=140//in MPa
m=18.66//modular ratio
W2=(D/10^3)*1*25//self load, in kN/m
W=W1+W2//in kN/m
M=W*l^2/2*10^6//bending moment at face of wall, in N-mm
//10 mm dia bars at 145 mm c/c as main steel
dia=10//in mm
d=D-dia/2-cover
c=100//spacing of reinforcement, in mm
Ast=1000*0.785*dia^2/c//in sq mm
//assuming balanced section
z=0.87*d//in mm
sigma_st=M/(Ast*z)//in MPa
Tbd=0.6//bond stress in MPa
Ld=dia*sigma_st/(4*Tbd)//in mm
Ld=412//round-off,in mm
mprintf("Development length required from the face of the support = %d mm",Ld)
