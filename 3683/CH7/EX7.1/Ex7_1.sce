sigma_cbc=5//in MPa
sigma_st=140//in MPa
MF=1.6//modification factor
//let a be span to depth ratio
l=4//span, in m
a=MF*20
D=l*1000/a//in mm
//to calculate loading
self_weight=25*(D/10^3)//in kN/m
finish=1//in kN/m
live_load=2//in kN/m
W=self_weight+finish+live_load//total load, in kN/m
lef=l+D/1000//in m
M=W*lef^2/8//in kN-m
//check for depth
d=round((M*10^6/(0.87*1000))^0.5)//in mm
//assume 12 mm dia bars
D=d+12/2+15//in mm
//the calculated value of D is more than its assumed value
D=150//revised value of depth, in mm
self_weight=25*(D/10^3)//in kN/m
finish=1//in kN/m
live_load=2//in kN/m
W=self_weight+finish+live_load//total load, in kN/m
lef=l+D/1000//in m
M=W*lef^2/8//in kN-m
//check for depth
d=round((M*10^6/(0.87*1000))^0.5)//in mm
D=d+12/2+15//in mm
Ast=round(M*10^6/(sigma_st*0.87*d))//in sq mm
s1=1000*0.785*12^2/Ast//which is less than 3d= 387 mm
s1=120//approximately, in mm
Ads=0.15/100*1000*D//distribution steel, in sq mm
//assume 8 mm dia bars
s2=1000*0.785*8^2/Ads//which is less than 5d= 645 mm
s2=220//approximately, in mm
//to calculate development length
w=0.345//support width, in m
lef=l+w//in m
R=W*lef/2//reaction at support, in kN
M1=R*w/2-W*w^2/2//bending moment at the face of wall, in kN-m
sigma_st=M1*10^6/(Ast/2*0.87*d)//in MPa
Tbd=0.6//in MPa
Ld=12*sigma_st/(4*Tbd)//in mm
La=w*1000-25//available length for bar over wall, which is greater than development length
//check for shear
V=W*4.15/2//in kN
Tv=V*10^3/(1000*d)//in MPa
Tc=0.33//permissible shear in concrete for p=0.71 and M15, in MPa
Tc=1.3*Tc//permissible shear for slabs, in MPa
//Tc>Tv; hence no shear reinforcement is required
mprintf("Summary of design\nSlab thickness=%d mm\nCover=15 mm\nMain steel = 12 mm dia @ %d mm c/c\nAlternate bars are bent up @ 45-degree at support at a distance l/7 from support face\nDistribution steel=8 mm dia @ %d mm c/c",D,s1,s2)
