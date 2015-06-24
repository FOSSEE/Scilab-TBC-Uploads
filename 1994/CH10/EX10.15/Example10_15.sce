//Chapter-10,Example10_15,pg10_47
Po=24*10^3
Il=57
Is=Il
P=8
N=720
f=50
Vl=415
pf=0.707
Ns=120*f/P
s=(Ns-N)/Ns
Ml=1000
Pm=Po+Ml
Pc=Pm*s/(1-s)
Tsh=Po*60/(2*%pi*N)
T=Pm*60/(2*%pi*N)
Rcl=1041.66//rotor copper loss
P2=Pc/s
Pi=sqrt(3)*Vl*Il*pf
Rs=0.1
Scl=3*(Is^2)*Rs//stator copper loss
Sl=Pi-P2
Sil=Sl-Scl//stator iron loss
n=Po*100/Pi
printf("shaft torque\n")
printf("Tsh=%.3f N-m\n",Tsh)
printf("gross torque \n")
printf("T=%.3f N-m\n",T)
printf("rotor copper losses\n")
printf("Pc=%.2f W\n",Pc)
printf("stator copper losses\n")
printf("Scl=%.2f W\n",Scl)
printf("stator iron losses\n")
printf("Sil=%.2f W\n",Sil)
printf("overallefficiency\n")
printf("n=%.2f",n)
