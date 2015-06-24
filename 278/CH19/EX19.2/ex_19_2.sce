// find..
clc
//solution
//given
P=35000//W
N=240//rpm
L=0.350//mm
u=0.25
t=10//mm
n=6
q=%pi
fts=80//N/mm^2
ftk=80//N/mm^2
ts=50//N/mm^2
tk=50//N/mm^2
f=2.5//N/mm^2
ft=4.5//N/mm^2
fb=15//N/mm^2
rho=7200//kg/m^3
//fb*10^6=rho*v^2
v=sqrt(ft*10^6/rho)//m/s
printf("the speed is,%f m/s\n",v)
D=(v*60)/(%pi*N)//m
printf("the dia of pulley is,%f m\n",D)
//let b e width of belt 
//let T1 and T2 be tension on tight and slag side
//P=(T1-T2)*v
//T1-T2=1400//N
//log(T1/T2)=u*q=0.25*3.14=0.3415
//T2=T1/2.195//N
T1=2572//N
T2=1172//N
rho1=1000//kg/m^3
//A=b*t=10*b/10^6//m^2
//let b is width
//m=A*rho1=b*t*rho=0.01*b//kg/m
//Tc=m*v^2=6.25*b
//T=f*b*t=25*b//N
//T1=T-Tc
//T1=25*b-6.25b
//b=T1/18.75//mm
printf("the width of belt si,%f mm\n",T1/18.75)
printf("the standard width of belt is b=140mm\n")
b=140//mm
Tc=6.25*b//N
//let d eb dia of shaft
T3=(P*60)/(2*%pi*N)//N-mm
M=(T1+T2+2*Tc)*L
Te=sqrt(M^2 + T3^2)
//d=((Te*16*1000)/(%pi*ts))^(1/3)//mm
printf("the dia of shaft is,%f mm\n",((Te*16*1000)/(%pi*ts))^(1/3))
printf("the standard dia of shaft is d=65mm\n")
d=65//mm
//corres to d=65mm,
width =20//mm
thickness =12//mm
printf("correponding to d=65mm,thickness and width is,%f mm\n,%f mm\n",thickness,width)
//let l be length of key
//T3*1000=l*20*tk*d/2
//l=T3/(32500)//mm
printf("the length of key is,%f mm\n",T3/(32500))
printf("length should be atleast l=102 mm\n")
printf("therfore length is 102 mm\n")
l=102//mm
//let b1 minor axis,a1 major axis
M=2*T3/n*1000//N-mm
//a1=2b1
//Z=(%pi/32)*b1*a1^2=(%pi)/8*b1^3=0.2=393*b1^3
//fb=M/Z
b1=(M/(0.393*fb))^(1/3)//mm
printf("the minor and moajor axis is,%f mm\n,%f mm",b1,2*b1)

