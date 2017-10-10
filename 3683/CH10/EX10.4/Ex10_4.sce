R=0.15//rise, in m
t=0.3//tread, in m
sigma_cbc=5//in MPa
sigma_st=230//in MPa
l1=1.8+1.5//span for flight AB, in m
l2=1.2+1.5+1.5//span for flight BC, in m
l3=1.8+1.5//span for flight CD, in m
//assuming 50 mm slab thickness per 1 m of span
D=50*l2//slab thickness, in mm
W1=D/10^3*25*1.5*sqrt(R^2+t^2)/t//slab load on plan, in kN/m
W2=1/2*R*t*1.5*25/t//load of step per metre, in kN/m
W3=1.5*5//live load, in kN/m
W=W1+W2+W3//in kN/m
//bending moment
//(a) flight AB and CD, refer Fig. 10.9
Rb=(W/2*1.5*(1.8+1.5/2)+W*1.8^2/2)/(1.5+1.8)//in kN
Ra=W/2*1.5+W*1.8-Rb//in kN
x=Ra/Rb//point of zero shear force from Ra, in m
M1=Ra*x-W*x^2/2//maximum bending moment, in kN-m
//(b) flight BC, refer Fig. 10.10
Rb=(W/2*1.5^2/2+W*1.2*(1.2/2+1.5)+W/2*1.5*(1.5+1.2+1.5/2))/(1.5+1.2+1.5)//in kN
Rc=Rb//in kN
//maximum bending moment will be at centre
M2=Rb*(1.5+1.2/2)-W/2*1.5*(1.5/2+1.2/2)-W*(1.2/2)^2/2//maximum bending moment, in kN-m
M=max(M1,M2)//in kN/m
d=sqrt(M*10^6/0.65/1.5/10^3)//in mm
//assume 10 mm dia bars
dia=10//in mm
D=d+dia/2+25//< 210 mm (assumed value)
D=210//in mm
d=D-dia/2-25//in mm
//steel
//flight AB and CD
z=0.9*d//in mm
Ast=M1*10^6/sigma_st/z//in sq mm
s1=1500*0.785*dia^2/Ast//spacing of 10 mm dia bars, in mm
s1=210//round-off, in mm
Ads=0.12/100*D*1.5*10^3//distribution steel, in sq mm
//provide 6 mm dia bars
s2=1000*0.785*6^2/Ads//in mm
s2=70//round-off, in mm
//flight BC
Ast=M2*10^6/sigma_st/z//in sq mm
s3=1500*0.785*dia^2/Ast//spacing of 10 mm dia bars, in mm
s3=130//round-off, in mm
//distribution steel is same as flights AB and CD
//let span-to-depth ratio be 'a'
a=l2*10^3/D
//for Fe415 grade steel and pt=.32
MF=1.2//modification factor
b=20*MF//permissible span-to-depth ratio
//as a < b, hence OK
mprintf("Summary of design\nSlab thickness=%d mm\nCover = 25 mm\n(a)Flight AB and CD\nMain steel = 10 mm dia bars @ %d mm c/c\nDistribution steel = 6 mm dia @ %d mm c/c\n(b)Flight BC\nMain steel = 10 mm dia bars @ %d mm c/c\nDistribution steel = 6 mm dia @ %d mm c/c",D,s1,s2,s3,s2)
//answer in textbook is incorrect
