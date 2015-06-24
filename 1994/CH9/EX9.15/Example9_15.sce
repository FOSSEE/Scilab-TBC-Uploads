//Chapter-9,Example9_15,pg 9_64
P=6
V=500
A=2//wave wound
Z=1200
phi=20*10^-3//flux
Ra=0.5
Rsh=250
Il=20
Ish=V/Rsh
Ia=Il-Ish
Eb=V-Ia*Ra
N=Eb*60*A/(phi*P*Z)
Pm=Eb*Ia//mechanical power
w=2*%pi*N/60//angular velocity
Tg=Pm/w
ML=900//mechanical losses
Pout=Pm-ML
Tsh=Pout/w//usefull torque
Pin=V*Il
n=Pout*100/Pin//efficiency at load
printf("usefull torque\n")
printf("Tsh=%.2f Nm\n",Tsh)
printf("efficiency at load\n")
printf("n=%.2f",n)
