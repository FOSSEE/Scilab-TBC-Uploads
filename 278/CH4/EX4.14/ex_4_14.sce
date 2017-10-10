
clc
//solution
//given
t1=37//deg celcius
t2=20//deg celcius
Es=210*10^9//N/m^2
Ed=74*10^9//N/m^2
as=11.7*10^-6//per degree celcius
aa=23.4*10^-6//per degree celcius
ds=0.05//m
da=0.025//m
ls=0.6//m
la=0.3//m
pi=3.14
//refer fig4.16 in book
t=t1-t2//degree celcius
x1=as*ls*t//contraction in steel bar
x2=aa*la*t//contaction in aluminium bar
x=x1+x2//total contraction
//assume support B is removed,therefore there will no stress in bar,let us assume P force is applied to the right end to brougth in contact with support B..refer ffig 4.17
As=(pi/4)*ds^2//m^2//area of steel bar
Aa=(pi/4)*da^2//m^2
//we know dls=change in length=(P*ls)/(As*Es),therefore dls=P*1.455*10^-9//m
//dla=P*8.257*10^-9//m
//threfore total dl=dls + dla=9.712*10^-9 *P//m
//P*9.712*10^-9=x
P=x/(9.712*10^-9)
fs=P/As//stress in steel bar//N/m^2
fa=P/Aa//stress in aluminiumbar//N/m^2
//when supports are yielding by 0.1 mm
X=x-10^-4//m
P1=X/(9.712*10^-9)//N
fs1=P1/As//N/m^2
fa1=P1/Aa//N/m^2
printf(" the  initial stress in steel bar is, %f N/m^2\n",fs)
printf("the initial stress in aluminium bar is,%f N/m^2\n",fa)
printf("the final stress in steel bar is,%f N/m^2\n",fs1)
printf("the final stress in alu bar is,%f N/m^2",fa1)