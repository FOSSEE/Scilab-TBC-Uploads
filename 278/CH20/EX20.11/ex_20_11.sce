//finf Fs
clc
//soltuion
//given
d=38//mm
D=2000//mm
W=50000//N
depth=900//m
v=3//m/s
a=1.5//m/s^2
dw=0.05*d//mm
Bs=1880//N/mm^2//breaking strength
Er=84*1000//N/mm^2
w=47700//N
//rope is 8*19
n=8*19
A=(%pi/4)*dw^2*n//mm^2
mbs=Bs*A//min breaking strength
printf("min breaking stresngth is,%f N\n",mbs)
fb=84000*dw/D
printf("bending stress acting is,%f N/mm^2\n",fb)
Wb=fb*A//N
printf("the bending load on rope is,%f N\n",Wb)
g=9.81//m/s^2
Wa=(W+w)/g*a//additonal load
printf("additional load due to acc si,%f N\n",Wa)
Wst=2*(W+w)
printf("the starting load acting is,%f N\n",Wst)
Wen=W+w+Wb//N//during normal working
printf("effctive load during uniform velocity is,%f N\n",Wen)
Fs=mbs/Wen
printf("the factor of safety during normal working is,%f \n ",Fs)
Wea=W+w+Wb+Wa//N//during acc
Fsa=mbs/Wea
printf("the factor of safety during acc is,%f ",Fsa)
//during straing
Wes=Wst+Wb//N
Fss=mbs/Wes
printf("the factor of safety during startin is,%f ",Fss)