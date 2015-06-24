//Chapter-9,Example9_30,pg 9_85
Po=8.952*10^3
V=440
Ra=1.1
Rsh=650
Rint=0.4
Rreg=50
Ml=450
Vbr=2//brush drop
Il=24
Rat=Ra+Rint//series connection
Rsht=Rsh+Rreg//series connection
Ish=V/Rsht
Ia=Il-Ish
Acl=(Ia^2)*Rat//armature copper loss
Fcl=(Ish^2)*Rsht//feild copper loss
Bdl=Vbr*Ia//brush drop loss
TL=Acl+Fcl+Bdl+Ml
n=Po*100/(Po+TL)
printf("efficiency of motor\n")
printf("n=%.2f ",n)
