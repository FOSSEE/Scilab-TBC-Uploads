sigma_cbc=5//in MPa
sigma_st=230//in MPa
MF=1.4//modification factor
//let a be span to depth ratio
l=1//span, in m
a=MF*7
D=l*1000/a//in mm
D=105//assume, in mm
//to calculate loading
self_weight=25*(D/10^3)*1.5//in kN/m
finish=0.5*1.5//in kN/m
live_load=0.75*1.5//in kN/m
W=self_weight+finish+live_load//in kN/m
lef=l+0.23/2//effective span, in m
M=W*lef/2//in kN-m
//check for depth
d=(M*10^6/(0.65*1500))^0.5//in mm
dia=12//assume 12 mm dia bars
D=d+12/2+15//<105, hence OK
D=100//assume, in mm
d=D-dia/2-15//in mm
//main steel at mid-span
Ast=M*10^6/(sigma_st*0.9*d)//in sq mm
s1=1500*0.785*12^2/Ast//>3d = 237 mm
s1=235//assume, in mm
Ads=0.12/100*1000*D//distribution steel, in sq mm
//assume 6 mm dia bars
s2=1000*0.785*6^2/Ads//in mm
s2=235//assume, in mm
Tbd=0.84//in MPa
Ld=dia*sigma_st/4/Tbd// in mm
Ld=821//round-off, in mm
Tv=W*10^3/1500/d//in MPa
As=1500*0.785*12^2/235//in sq mm
pt=As/1500/d*100//in %
Tc=0.316//in MPa
//as Tc>Tv, no shear reinforcement required
mprintf("Summary of design\nThickness of slab = %d mm\nCover = 15mm\nMain steel = 12 mm dia @ %d mm c/c\nProvide development length of %d mm in the beam from face of beam\nDistribution steel = 6 mm dia @ %d mm c/c",D,s1,Ld,s2)
