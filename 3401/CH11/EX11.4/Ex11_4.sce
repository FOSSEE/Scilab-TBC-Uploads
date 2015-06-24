clc

T=300// K
k=1.3806*10^-23// JK^-1
Na=3*10^16// cm^-3
Qss=10^11// cm^-2
VTN=0.65// V
phims=-1.13// V
epsilon0=8.85*10^-14// F/m
epsilons=11.7
epsilonox=3.9
ni=1.5*10^10// cm^-3
e=1.6*10^-19// eV
phifp=(((k*T)/e)*log(Na/ni))
disp(phifp,"the value of phifp in V is")
xdT=(4*(epsilons*epsilon0)*phifp/(e*Na))^0.5
disp(xdT,"the value of xdT in  meter is")
QSD=e*Na*xdT// [QSD(max)]=e*Na*xdT
disp(QSD,"the value of QSD in C.cm^2 is")
tox=((VTN-phims-2*phifp)*(epsilonox*epsilon0))/(QSD-(Qss*e))
disp(tox,"in meter is")
