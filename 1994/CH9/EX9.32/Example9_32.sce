//Chapter-9,Example9_32,pg 9_86
Po=7.46*10^3
V=250
Ilo=5
Ra=0.5
Rsh=250
Ish=V/Rsh
Iao=Ilo-Ish
Acl=(Iao^2)*Ra
Fcl=(Ish^2)*Rsh
Pi=V*Ilo
FWl=Pi-Acl-Fcl//friction and windage loss
//Pin=Eb*Ia=(V-Ia*Ra)*Ia
//0.5*(Ia^2)-250*Ia+8452=0
b=-250
a=0.5
c=8452
Ia=(-b-sqrt((b^2)-4*a*c))/(2*a)//neglecting higher value
TL=(Ia^2)*Ra+(Ish^2)*Rsh+FWl
n=Po*100/(Po+TL)
//for max. efficiency
Ia=sqrt((FWl+Fcl)/Ra)
Eb=V-Ia*Ra
Pm=Eb*Ia
//Po at nmax
Po=Pm-FWl
printf("maximum efficiency output\n")
printf("Po=%.3f W",Po)
