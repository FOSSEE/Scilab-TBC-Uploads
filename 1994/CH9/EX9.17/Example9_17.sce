//Chapter-9,Example9_17,pg 9_66
Ra=0.08
Eb1=242
V=250
Ia=87
Vt=V//generator supply
Nm=1500
Ia1=(V-Eb1)/Ra
//at start N=0, Eb=0
Ias=V/Ra//Ia(start)
Ia2=120
Eb2=V-Ia2*Ra
Eg=Vt+Ia*Ra//generator e.m.f
Ng=Nm*Eg/Eb1//speed as generator
printf("speed as generator\n")
printf("Ng=%.2f r.p.m",Ng)
