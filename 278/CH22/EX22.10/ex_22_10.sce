clc
//solution
//given
P=180*1000//W
N=240//rpm
ft=5.2*10^6//N/m^2
//N1-N2=0.03
rho=7220//kg/m^3
tf=40//N/mm^2
Tmean=(P*60)/(2*%pi*N)//N-m
printf("mean torque acig is,%f N-m\n",Tmean)
//ref fig 22.18
q=4*%pi
Wdpc=Tmean*q
Wp=1.33*Wdpc//work done in power stroke....eq1
//Wp1=(0.5*%pi)*Tmax...eq2
Tmax=Wp/(%pi/2)//N-m
printf("max torque is,%f N-m\n",Tmax)
//BG=BF-FG
BG=Tmax-Tmean//N-m
BF=Tmax
dE=Wp*(BG/BF)^2//N-m
printf("dE is,%f N-m\n",dE)
//let D be mean dia
//let v be peripheral velo
v=sqrt(ft/rho)//m/s
D=(v*60)/(N*%pi)//m
R=D/2
printf("the dia of wheel is,%f m\n",D)
//N1-N2=0.03*N
Cs=0.03
w=2*%pi*N/60//rad/s
//dE=E*2*Cs
m=dE/(R^2*w^2*Cs)
printf("mass of wheel is,%f kg\n",m)
//let t be thickness and b be width of rim
//b=2t
//A=b*t=2*t^2
t=sqrt(m/96730)//mm
printf("the thicknes and width is,%f m\n,%f m\n",t,2*t)
//let d be dia of hub ,d1 be dia of shaft,l be length of hub
//let Tmax1 be max torque on shaft
Tmax1=2*Tmean*1000//N-mm
//d1=(Tmax1*16/(%pi*tf))^(1/3)
printf("dia od shaft is,%f mm\n",(Tmax1*16/(%pi*tf))^(1/3))
printf("the dia of shaft is say 125mm\n")
d1=125//mm
d=2*d1//mm
l=2*t//mm
printf("the dia of hub and length of hub is,%f mm\n,%f m\n",d,l)
//let a1 be major and b1 be minor axis
//a1=2*b1
n=6
fb=15//N/mm^2
M=Tmax1*(D*1000-d)/(D*n*1000)//N-mm
printf("bending moment is,%f N-mm\n",M)
//Z=(%pi/32)*b1*a1^2=0.05*a1^3
//fb=M/Z
a1=(M/(fb*0.05))^(1/3)//mm
b1=0.5*a1
printf("major and minor axis is,%f mm\n,%f mm\n",a1,b1)
printf("corrsponding to shaft of dia 125 mm,width is 36 mm and thicknss ofkey is 20 mm\n")
//let L be length of key
L=Tmax1/(36*tf*d1/2)//mm
printf("length of key is,%f mm\n",L)