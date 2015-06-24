//find
clc
//solution
//given
d=0.05//m
l=0.1//m
p=1.4//N/mm^2
N=900//rpm
//d/c=1000
Z=0.011
to=75//deg C
ta=35//deg C
t=10//deg C
S=1850
u=(33/10^8)*(Z*N/p)*1000+0.002
W=p*d*l*10^6//N
V=%pi*d*N/60//m/s
Qg=u*W*V///W
//(tb-ta)=0.5(75-35)=20//deg C
C=280//W/m^2/C
Qd=C*l*d*20//J/s
printf("headt dessipated is,%f W\n",Qd)
Qa=Qg-Qd//W
//let m be mass
//Qt=m*S*t=18500*t
m=Qa/18500//kg/s
printf("artificial heat is,%f W\n",Qa)
printf("mass of lubricant ewq is,%f kg/s\n",m)