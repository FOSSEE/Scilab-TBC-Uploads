
ky=6
kz=8

kr=sqrt(ky^2+kz^2)
printf("\nkr=%.0f m^-1",kr)
//(a)
O=180/%pi*asin(ky/kr)
theta=(180-O)*%pi/180
Vr=3*10^8
printf("\n(a)\nO=%.2f degree",O)
//(b)
lr=2*%pi/kr
ly=2*%pi/ky
lz=2*%pi/kz
printf("\n(b)\nlr=%.4f m\nly=%.4f m\nlz=%.4f m",lr,ly,lz)
//(c)
W=Vr*kr
f=W/lr
Vpy=W/ky
Vpz=W/kz
printf("\n(c)\nW=%.0e rad/s\nf=%.2e Hz\nVpy=%.1e m/s\nVpz=%.2e m/s",W,f,Vpy,Vpz)
Ver=3*10^8
Vey=Ver*sin(theta)
Vez=Ver*cos(theta)
printf("\n(d)\nVey=%.1e m/s\nVez=%.1e m/s",Vey,Vez)






