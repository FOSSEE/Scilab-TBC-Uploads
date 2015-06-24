//Chapter-9,Example9_25,pg 9_78
V=400
Po1=18.5*10^3
Pi1=22.5*10^3
Rsh=200
Ra=0.4
Po2=9*10^3
I1=Pi1/V
Ish=V/Rsh
Ia1=I1-Ish
Acl=(Ia1^2)*Ra//armature copper loss
Scl=(Ish^2)*Rsh//shunt feild copper loss
TL=Pi1-Po1//total losses
SFl=TL-(Acl+Scl)//stray and friction loss
//case-2
Pm=Po2+SFl//mechanical power
//Pm=Eb2*Ia2.........(1)
//Eb2=V-Ia2*Ra.......(2)
//using (1) and (2)
//0.4*(Ia2^2)-400*Ia2+11022.75=0
a=0.4
b=-400
c=11022.775
Ia2=(-b-sqrt((b^2)-4*a*c))/(2*a)//neglecting higher value
Pi2=Po2+(Ia2^2)*Ra+(Ish^2)*Rsh+SFl
n=Po2*100/Pi2//efficiency
printf("power input in case-2\n")
printf("Pi2=%.3f W\n",Pi2)
printf("efficiency of motor\n")
printf("n=%.2f ",n)
