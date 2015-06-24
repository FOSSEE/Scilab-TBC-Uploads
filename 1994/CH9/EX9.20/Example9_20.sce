//Chapter-9,Example9_20,pg 9_70
V=250
Ra=0.15
Rsh=166.67
No=1280
Il1=67
Ish=V/Rsh
Ia1=Il1-Ish
Eb1=V-Ia1*Ra
//on no load
Ilo=6.5
Ish=1.5
Iao=Ilo-Ish
Ebo=V-Iao*Ra
N1=Eb1*No/Ebo
Sr=(No-N1)*100/No//speed regulation
SL=Ebo*Iao
Po=Eb1*Ia1-SL//full load shaft output
hp=Po/746//horse power rating
Pi=V*Il1
n=Po*100/Pi
printf("full load speed\n")
printf("N1=%.3f r.p.m\n",N1)
printf("speed regulation\n")
printf("Sr=%.2f \n",Sr)
printf("hp rating of machine\n")
printf("hp=%.2f hp\n",hp)
printf("full load efficiency\n")
printf("n=%.2f ",n)
