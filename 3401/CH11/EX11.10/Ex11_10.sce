clc

T=300// K
Na=3*10^16// cm^-3
tox=500*10^-8// tox=500A =500*10^-8 cm
k=1.3806*10^-23// JK^-1
VSB=1// V
epsilon0=8.85*10^-14// F/m
epsilons=11.7
epsilonox=3.9
ni=1.5*10^10// cm^-3
e=1.6*10^-19// eV
phifp=(((k*T)/e)*log(Na/ni))// phifp=V1*log(Na/ni)=((k*T)/e)*log(Na/ni)
disp(phifp,"the value of phifp in V is")
Cox=(epsilon0*epsilonox)/tox
disp(Cox,"the value of Cox in F/cm^2 is")
deltaVT=(sqrt(2*e*(epsilon0*epsilons)*Na))/Cox*((sqrt(2*phifp+VSB))-(sqrt(2*phifp)))
disp(deltaVT,"the value of deltaVT in V is")
