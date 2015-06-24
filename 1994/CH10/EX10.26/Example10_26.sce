//Chapter-10,Example10_26,pg10_66
R2=0.04
X2=0.2
sfl=0.03
//at Tst, s=1
//Tfl=Tst
//(R21^2)-1.3633*R21+0.04=0
a=1
b=-1.3633
c=0.04
R21=(-b+sqrt((b^2)-4*a*c))/(2*a)
Rex=R21-R2
pf=R21/sqrt((R21^2)+(X2^2))
printf("power factor of rotor\n")
printf("pf=%.3f lagging",pf)
