
clc
//solution
//given
d=45//mm
fyts=400//N/mm^2'//for shaft
w=14//mm
t=9//mm
fytk=340//N/mm^2//for key
Fs=2
pi=3.14
//let l be length of key
tmaxs=fyts/(2*Fs)//N/mm^2
tmaxk=fytk/(2*Fs)//N/mm^2
tmax=(pi/16)*tmaxs*d^3//N-mm
//tmax=l*w*tmaxk*d/2
l1=(tmax*2)/(w*tmaxk*d)//
printf("the length of key(l1) is,%f mm\n",l1)
//tmax=l2*t*fytk*d/4=17213*l2
l2=tmax/17213//mm
printf("te length of key(l2) is,%f mm\n",l2)
printf("since l2 &gt;l1,taking large value l2=l ,length of key\n")
l=103.89//mm
printf("the length of key(l) is,%f mm\n",l)