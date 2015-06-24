
a=0.0158
b=0.0079
f=15.8*10^9
//TE10
m=1
n=0
fc=3*10^8*sqrt((m/2/a)^2+(n/2/b)^2)
printf("\n(a)\nfor TE10 \n\tfc=%.4e Hz",fc)
Vp=3*10^8/sqrt(1-(fc/f)^2)
//TE20
m=2
n=0
fc=3*10^8*sqrt((m/2/a)^2+(n/2/b)^2)
printf("\nfor TE20 \n\tfc=%.4e Hz",fc)
//TE01
m=0
n=1
fc=3*10^8*sqrt((m/2/a)^2+(n/2/b)^2)
printf("\nfor TE01 \n\tfc=%.4e Hz",fc)
//TE11
m=1
n=1
fc=3*10^8*sqrt((m/2/a)^2+(n/2/b)^2)
printf("\nfor TE11 \n\tfc=%.4e Hz",fc)
printf("\n(c)\nVp=%4e m/s",Vp)





