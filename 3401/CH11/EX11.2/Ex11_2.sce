clc

phim=3.20// v
x=3.25// v
Eg=1.11//eV
Na=10^14// cm^-3
k=1.3806*10^-23// JK^-1
T=300// K
ni=1.5*10^10// cm^-3
e=1.6*10^-19// eV
phifp=(((k*T)/e)*log(Na/ni))
disp(phifp,"the value of phifp in V is")
phims=phim-(x+(Eg/2)+phifp)
disp(phims,"work function difference in V is ")
