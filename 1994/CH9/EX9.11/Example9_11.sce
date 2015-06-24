//Chapter-9,Example9_11,pg 9_45
V=250
Rsh=250
Ra=0.25
Rx=Rsh
Ia1=20
Ish1=V/Rsh
Ish2=V/(Rsh+Rx)
N1=1500
Eb1=V-Ia1*Ra
//phi=k*Ish
//T1=T2
Ia2=Ish1*Ia1/Ish2//new current
Eb2=V-Ia2*Ra
//from speed equation
N2=N1*(((Eb1/Eb2)*(Ish2/Ish1))^-1)//new speed
printf("new current\n")
printf("Ia2=%.f A\n",Ia2)
printf("new speed\n")
printf("N2=%.3f r.p.m",N2)
