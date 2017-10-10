b=230//width, in mm
d=500//effective depth, in mm
l=6//span, in m
s=0.3//thickness of support, in m
Lef=l+s//effective span, in m
W=60//UDL, in kN/m
Ast=6*0.785*20^2//six 20 mm dia bars at bottom, in sq mm
Asc=2*0.785*20^2//two 20 mm dia bars at top, in sq mm
dia=20//in mm
sigma_cbc=5//in MPa
sigma_st=230//in MPa
m=18.66//modular ratio
R=W*l/2//in kN
M=(R*s/2-W*s^2/2)*10^6//bending moment at face of wall, in N-mm
//assuming balanced section
z=0.87*d//in mm
sigma_st1=M/(Ast*z)//in MPa
Tbd=0.6*1.4//bond stress in MPa for deformed steel and M15
Ld1=dia*sigma_st1/(4*Tbd)//in mm
//to find critical depth of neutral axis
Xc=d/(1+sigma_st/(m*sigma_cbc))//in mm
Xc=144//round-off, in mm
//at face of support
sigma_cbc=sigma_st1/m*Xc/(d-Xc)//in MPa
sigma_sc=1.5*m*sigma_cbc//in MPa
Tbd=1.68//bond stress in MPa for M15 and deformed steel in compression
Ld2=dia*sigma_sc/(4*Tbd)//in mm
mprintf("Development length required from the face of the support for tension steel = %d mm\nDevelopment length required from the face of the support for compression steel = %d mm",Ld1,Ld2)
