l=2.5+1.5//span, in m
R=0.15//rise, in m
t=0.25//tread in m
sigma_cbc=7//in MPa
sigma_st=275//in MPa
//assuming 50 mm per 1 m of span
D=50*l//in mm
W1=D/10^3*25*1.5*sqrt(R^2+t^2)/t//slab load on plan, in kN/m
W2=1/2*R*t*1.5*25/t//load of step per metre, in kN/m
W3=1.5*5//live load, in kN/m
W=W1+W2+W3//in kN/m
M=W*l^2/8//in kN-m
d=sqrt(M*10^6/0.81/1.5/10^3)//in mm
d=177//in mm
//assume 10 mm dia bars
dia=10//in mm
D=d+dia/2+25//which is slightly more than assumed value, hence OK
D=200//in mm
d=D-dia/2-25//in mm
z=0.92*d//in mm
Ast=M*10^6/sigma_st/z//in sq mm
s1=1500*0.785*dia^2/Ast//spacing of 10 mm dia bars, in mm
s1=130//assume, in mm
Ads=0.12/100*D*1.5*10^3//distribution steel, in sq mm
//provide 8 mm dia bars
s2=1000*0.785*8^2/Ads//in mm
s2=140//in mm
//let span-to-depth ratio be 'a'
a=l*10^3/D
pt=Ast/1500/D*100//pt=0.3
//for Fe500 grade steel and pt=.3
MF=1.2
b=20*MF//permissible span-to-depth ratio
//as a<b, hence OK
mprintf("Summary of design\nSlab thickness=%d mm\nCover = 25 mm\nMain steel = 10 mm dia bars @ %d mm c/c\nDistribution steel = 8 mm dia @ %d mm c/c",D,s1,s2)
