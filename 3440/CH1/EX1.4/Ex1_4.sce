clc

T=300 //K
Nd=10**16//atoms/cm^3
Nc=2.86*10**19//cm^-3
ni=9.65*10**9//cm^-3
k=8.617*10^-5 //eV/K
e=1.6*10**-19 //C
n=Nd
disp(n,"in cm^-3 is")
p=ni^2/Nd
disp(p,"in cm^-3 is")
//Ec-Ef=z
z=k*T*log(Nc/Nd)
disp(z,"fermi level measured from bottom of conduction band in eV is")
//Ef-Ei=y
y=k*T*log(Nd/ni)
disp(y,"Fermi level measured from the intrinsic fermi level in eV is")
