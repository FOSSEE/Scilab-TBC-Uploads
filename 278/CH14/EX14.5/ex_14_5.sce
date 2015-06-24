//determine dia of the shaft
clc
//solution
//given
M=3000*1000//N-mm
T=10000*1000//N-mm
ftu=700//N/mm^2
tu=500//N/mm^2
Fs=6
ft=ftu/Fs//N/mm^2
t=tu/Fs//N/mm^2
//let d eb dia of shaft
Te=sqrt(T^2 + M^2)//N-mm
//Te=(%pi/16)*t*d^3
d1=(Te/16.36)^(1/3)//mm
printf("the dia of axle is,%f mm\n",d1)
Me=0.5*[M+ sqrt(M^2 + T^2)]//N-mm
//Me=(%pi/32)*fb*d2^3
d2=(Me/11.46)^(1/3)//mm
printf("the dia oif shaft is,%f mm\n",d2)
printf("taking large value i.e d=d1=90 mm in consideration")
