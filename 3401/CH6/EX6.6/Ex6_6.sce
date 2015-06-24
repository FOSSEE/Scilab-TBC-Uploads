clc

T=300//K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
n0=10^15 //cm^-3
p0=10^5 //cm^-3
ni=10^10 //cm^-3
deltan=10**13 //cm**-3
deltap=10**13 //cm**-3

//Ef-Efi=a
a=(k*T)*log(n0/ni)
disp(a,"fermi level for thermal equlibrium in eV is= ")

//Efn-Efi=b
b=(k*T)*log((n0+deltan)/ni)
disp(b,"quasi fermi level for electrons in eV is= ")

//Efi-Efp=c
c=(k*T)*log((p0+deltap)/ni)
disp(c,"quasi fermi level for holes in eV is= ")
