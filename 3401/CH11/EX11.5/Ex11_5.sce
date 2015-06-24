clc

T=300// K
k=1.3806*10^-23// JK^-1
Na=10^14// cm^-3
Qss=10^10// cm^-2
tox=500*10^-8// a=500A =500*10^-8 cm
phims=-0.83// V
epsilon0=8.85*10^-14// F/m
epsilons=11.7
epsilonox=3.9
ni=1.5*10^10// cm^-3
e=1.6*10^-19// eV
phifp=(((k*T)/e)*log(Na/ni))
disp(phifp,"the value of phifp in V is")
xdT=(4*(epsilons*epsilon0)*phifp/(e*Na))^0.5
disp(xdT,"the value of xdT in microm is")
QSD=e*Na*xdT// [QSD(max)]=e*Na*xdT
disp(QSD,"the value of QSD in C/cm^2")
VTN=(QSD-(Qss*e))*(tox/(epsilonox*epsilon0))+phims+2*phifp// VTN=(QSD(max)-Qss)*(tox/epsilonox)+phims+2*phifp
disp(VTN,"the value of VTN in V is")
