//Chapter-10,Example10_7,pg10_24
P=4
f=50
R2=0.1
X2=1
N=1440
K=0.5
Ns=120*f/P
E1line=400
E1ph=E1line/sqrt(3)
E2ph=0.5*E1ph
s=(Ns-N)/Ns
ns=Ns/60//synchronous speed (r.p.s)
T=(3/(2*%pi*ns))*(s*(E2ph^2)*R2/((R2^2)+((s*X2)^2)))
printf("torque on full load\n")
printf("T=%.2f N-m",T)
