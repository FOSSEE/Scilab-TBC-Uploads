syms Kh
s=%s;
G=syslin('c',10*Kh*(s+0.04)*(s+1)/((s+0.5)*(s^2-(0.4*s)+0.2)*(s+8)));
evans(G,3)
Kh=kpure(G)
K=10*Kh
zeta=1/(2)^(1/2);
wn=.575;
sgrid(zeta,wn)
K=-1/real((2*horner(G,[1 %i]*locate(1))));
printf("The zeta=1/(2)^1/2 line intersects the root locus at two points with K1=1.155 and K2=0.79")
Kh1=0.156;
Kh2=0.079;
//  from the block diagram 
Td(s)=1/s;
E(s)=C(s)=G/(1+(G*Kh*(s+1))/(s+8))*Td(s);
// substituting value of G
F=s*E(s)=10*Kh/(1+(10*Kh));
// steay state error
ess=limit(F,s,0)
// for Kh1=0.156
ess=0.609;
// for Kh2=0.079
ess=0.44;



