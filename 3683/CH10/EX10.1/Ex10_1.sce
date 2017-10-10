l=1//span, in m
t=0.27//tread in m
sigma_cbc=5//in MPa
sigma_st=140//in MPa
MF=1.6
a=MF*7
D=l*10^3/a//in mm
D=100//assume, in mm
W1=D/10^3*t*25//in kN/m
M1=W1*l/2//in kN-m
M2=t*3*l/2//in kN-m
M3=1.3*l//in kN-m
M=M1+max(M2,M3)//in kN-m
d=sqrt(M*10^6/0.87/t/10^3)//in mm
d=83//in mm
//assume 8 mm dia bars
dia=8//in mm
D=d+dia/2+15//this is slightly more than assumed value, hence OK
D=100//in mm
z=0.87*d//in mm
Ast=M*10^6/sigma_st/z//in sq mm
n=Ast/0.785/8^2
n=4//assume
Ads=0.15/100*D*t*10^3//distribution steel, in sq mm
//provide 6 mm dia bars
s=1000*0.785*6^2/Ads//>5d=415 mm
s=415//in mm
Tbd=0.6//in MPa
Ld=dia*sigma_st/4/Tbd//in mm
Ld=470//assume, in mm
mprintf("Summary of design\nThickness of steps=%d mm\nCover from top=15 mm\nMain steel = 8 mm dia, %d in each step with development length of %d mm\nDistribution steel = 6 mm dia @ %d mm c/c",D,n,Ld,s)
