sigma_cbc=7//in MPa
sigma_st=230//in MPa
MF=1.22//modification factor
//let a be span to depth ratio
l=5//span, in m
a=MF*26
D=l*1000/a//in mm
D=160//assume, in mm
//to calculate loading
self_weight=25*(D/10^3)//in kN/m
finish=0.75//in kN/m
partitions=1//in kN/m
live_load=3//in kN/m
Wd=self_weight//dead load, in kN/m
Wl=finish+partitions+live_load//live load, in kN/m
lef=5.15//effective span, in m
M1=Wd*lef^2/12+Wl*lef^2/10//bending moment at mid-span, in kN-m
M2=Wd*lef^2/10+Wl*lef^2/9//bending moment at support next to end support, in kN-m
//check for depth
d=(M2*10^6/(0.89*1000))^0.5//in mm
dia=12//assume 12 mm dia bars
D=d+12/2+15//>160, hence depth not suitable
D=1.1*D//in mm
D=210//assume, in mm
self_weight=25*(D/10^3)//in kN/m
Wd=self_weight//in kN/m
M1=Wd*lef^2/12+Wl*lef^2/10//bending moment at mid-span, in kN-m
M2=Wd*lef^2/10+Wl*lef^2/9//bending moment at support next to end support, in kN-m
//check for depth
d=round((M2*10^6/(0.9*sigma_cbc/2*0.29*1000))^0.5)//in mm
D=d+12/2+15//<210, hence OK
D=200//assume, in mm
d=D-dia/2-15//in mm
//main steel at mid-span
Ast1=round(M1*10^6/(sigma_st*0.91*d))//in sq mm
s1=1000*0.785*12^2/Ast1//in mm
s1=175//approximately, in mm
//main steel at support
Ast2=round(M2*10^6/(sigma_st*0.91*d))//in sq mm
//alternate bars from mid-span are available at the central support as bent up bars; assuming same amount of steel is available from another adjoining mid-span steel
Ast2=Ast2-Ast1//which is nominal, hence no separate steel is required
Ads=0.12/100*1000*D//distribution steel, in sq mm
//assume 8 mm dia bars
s2=1000*0.785*8^2/Ads//in mm
s2=200//approximately, in mm
mprintf("Summary of design\nSlab thickness=%d mm\nMain steel = 12 mm dia @ %d mm c/c\nAlternate bars are bent up at support\nDistribution steel=8 mm dia @ %d mm c/c",D,s1,s2)
//answer given in textbook is incorrect
