//Chapter-10,Example10_13,pg10_44
P=4
f=50
Tsh=300
Tlost=50
fr=120/60//Hz
s=fr/f
s=s*100
printf("slip s=%.f \n",s)
Ns=120*f/P
s=s/100
N=Ns*(1-s)
Po=Tsh*2*%pi*N/60
Fl=Tlost*2*%pi*N/60
Pm=Po+Fl
Pc=Pm*s/(1-s)
Rcl=Pc/3//rotor copper loss per phase
P2=Pc/s
n=Pm*100/P2
I2r=60
R2=Rcl/(I2r^2)
printf("net output power\n")
printf("Po=%.3f W\n",Po)
printf("rotor copper loss per phase\n")
printf("Rcl=%.3f W\n",Rcl)
printf("rotor efficiency\n")
printf("n=%.2f \n",n)
printf("rotor resistance per phase\n")
printf("R2=%.4f ohm/ph",R2)
