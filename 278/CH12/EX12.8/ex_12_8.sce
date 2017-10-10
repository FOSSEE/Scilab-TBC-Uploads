
clc
//solution
//given
P=70*10^3//N
ftur=420//N/mm^2//for rod//ultimate point stress
ftup=510//N/mm^2//for pin
tu=396//N/mm^2
Fs=6
ftr=ftur/Fs//N/mm^2//yeild
t=tu/Fs//N/mm^2
pi=3.14
//let d be dia of rod
//P=(pi/4)*d^2*ftr=55*d^2
//d=sqrt(P/55)//mm
printf("the diameter of bolt is,%f mm\n",sqrt(P/55))
printf("the diameter of bolt is,say 36mm\n")
d=36//mm
//d1=d=36//mm//dia of knuckle pin
d1=36//mm
d2=2*d//mm//dia of outer eye
d3=1.5*d//mm//dia of knucle pin head and collar
T=1.25*d//mm//thickness of single eye
T1=0.75*d//thickness of fork
////let t1 be double shear stress acting
//P=(pi/4)*2*d1^2*t1//
t1=(P*4)/(2*pi*d1^2)//N//mm^2
printf("the double shear acting is,%f N/mm^2\n",t1)
//let ft1 be failur stress
//P=(d2-d1)*T*ft1
ft1=P/((d2-d1)*T)//N/mm^2
printf("the failure stress in tension acting is,%f N/mm^2\n",ft1)
//let ft2 forked end tension
//P=(d2-d1)*2*T1*ft2
ft2=P/((d2-d1)*2*T1)//
printf("forked end tension si,%f N/mm^2\n",ft2)