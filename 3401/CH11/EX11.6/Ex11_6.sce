clc

T=300// K
k=1.3806*10^-23// JK^-1
Qss=10^10// cm^-2
tox=650*10^-8// tox=650A =650*10^-8 cm
epsilon0=8.85*10^-14// F/m
epsilons=11.7
epsilonox=3.9
ni=1.5*10^10// cm^-3
e=1.6*10^-19// eV
Nd=2.5*10^14// cm^-3
phifn=(((k*T)/e)*log(Nd/ni))//phifn=V1*log(Nd/ni)=((k*T)/e)*log(Nd/ni)
disp(phifn,"the value of phifn in V is")
xdT=(4*(epsilons*epsilon0)*phifn/(e*Nd))^0.5
disp(xdT,"the value of xdT in meter is")
QSD=e*Nd*xdT// [QSD(max)]=e*Na*xdT
disp(QSD,"the value of QSD in C/cm^2")
phims=-0.35// V
VTP=(-QSD-(Qss*e))*(tox/(epsilonox*epsilon0))+phims-(2*phifn)// VTP=(-QSD(max)-Qss)*(tox/epsilonox)+phims+2*phifn
disp(VTP,"the value of VTP in V is")

