//Chapter-10,Example10_5,pg10_20
P=4
f=50
N=1455
E1line=415
Ns=120*f/P
s=(Ns-N)/Ns
fr=s*f
E1ph=E1line/sqrt(3)
E2ph=0.5*E1ph//K=2
E2r=s*E2ph
printf("frequency of rotor e.m.f\n")
printf("fr=%.2f Hz\n",fr)
printf("magnitude of induced e.m.f standstill\n")
printf("E2ph=%.2f V\n",E2ph)
printf("magnitude of induced e.m.f running\n")
printf("E2r=%.3f V",E2r)
