//Chapter-9,Example9_22,pg 9_73
P=4
Ia1=50
N1=2000
V=230
//coils connected in series
//phi1=k*Ia1*(4*n)=k*200*n
//coils connected in parallel groups of series coils
//phi2=k*((Ia2*2*n/2)+(Ia2*2*n/2))=k*2*n*Ia2
//phi1/phi2=100/Ia2........(1)
//N1/N2=phi2/phi1........(2)
//T=kN^2..........(3)
Ia2=(Ia1*(100^3))^(1/4)//using (1) in (3)
N2=(((N1^3)*Ia2)/Ia1)^(1/3)
printf("new speed of motor\n")
printf("N2=%.3f r.p.m",N2)
