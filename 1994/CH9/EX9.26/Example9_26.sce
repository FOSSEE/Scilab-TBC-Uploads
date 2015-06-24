//Chapter-9,Example9_26,pg 9_79
V=250
Ilo=4
Ra=1
Rsh=250
Ish=V/Rsh
Il1=20
Iao=Ilo-Ish
Ia1=Il1-Ish
Ebo=V-Iao*Ra
Po=Ebo*Iao
Eb1=V-Ia1*Ra
P1=Eb1*Ia1
Pout=P1-Po
Pi=V*Il1
n=Pout*100/Pi
//fro max. efficiency
//const. losses=variable losses
Ia=sqrt(Po+(Ish^2)*Rsh)
Ebm=V-Ia*Ra
Pm=Ebm*Ia
Pout=Pm-Po
Pi=V*(Ia+Ish)
nm=Pout*100/Pi
printf("maximum efficiency\n")
printf("nm=%.2f",nm)
