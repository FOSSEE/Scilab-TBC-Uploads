clc
clear
//Initialization of variables
R=8314.3
T=700 //K
T2=437.5 //K
T3=350 //K
T4=T3
p2=0.552 //Mpa
p1=2.758 //Mpa
p3=0.345  //Mpa
cp=29.3
R0=8.3143
k=1.4
n=1
P0=0.103 //Mpa
//calculations
cv=cp-R0
p3=p2*T3/T2
p3=0.345
T5=T4*(p1/p3)^((k-1)/k)
G1=n*R*T*log(p2/p1)
V700=R*10^3 *T/(p2*10^9)
Sa= 209
Sb=199.2
Sc=204.7
S2=(T2-T)/6 *(Sa+4*Sc+Sb    )
G2=V700*(p3-p2)*10^3 -S2
saa=199.2
sbb=192.6
savg=(saa+sbb)*0.5
G3=-savg*(T3-T2)
pmid=(p3+p2)/2
vmid=2.88
sav=192.7
v4=8.435 //m^3
v5=1.911 //m^3
integ=(p1-p3)*10^3 /6 *(v4+4*vmid+v5)
G4=integ - sav*(T5-T3)
Sav=194.25
G5= -Sav*(T-T5)
Gt=G1/10^3 +G2+G3+G4+G5
//results
printf("in case 1, Change in gibbs free energy = %d kJ",G1/10^3)
printf("\n in case 2, Change in gibbs free energy = %d kJ",G2)
printf("\n in case 3, Change in gibbs free energy = %d kJ",G3)
printf("\n in case 4, Change in gibbs free energy = %d kJ",G4)
printf("\n in case 5, Change in gibbs free energy = %d kJ",G5)
printf("\n Net change in gibbs energy = %d kJ",Gt)
