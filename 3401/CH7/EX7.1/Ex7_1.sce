clc

T=300//K
Na=1*10^18// Na=L*10^18 cm^-3
Nd=1*10^15// cm^-3
ni=1.5*10^10// cm^-3
e=1.6*10^-19// eV
k=1.3806*10^-23// JK^-1
Vbi=(((k*T)/e)*log(Na*Nd/ni^2))
disp(Vbi,"the value of Vbi in V is")

//changing the Na value
Na=10^16// Na=l*10^16 cm^1
Vbi=(((k*T)/e)*log(Na*Nd/ni^2))
disp(Vbi,"the value of Vbi in V is")
