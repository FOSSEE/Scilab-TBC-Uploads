clc
L1=5
L2=10
T1=2.5
T2=5
T3=5
T4=5
T5=2.5
E=30*10^6  //psi
outDia=2 //in
inDia=1/8 //in
RE=(T1+T2+T3+T4+T5)/2 //kips
RA=RE
disp("From the figure 9.12")
GH=(RA*L2-T2*L1-T1*L2)/4
printf("Stress in GH=%f kips",GH)
A=%pi*(outDia^2-(outDia-2*inDia)^2)/4
delta=GH*10^3 *(L1*12)/(E*A)
printf("\n Deformation=%f in",delta)
sigma=GH*10^3 /A
printf("\n Stress=%d psi",sigma)
SF=65000/sigma
printf("\n Factor of safety=%f ",SF)
