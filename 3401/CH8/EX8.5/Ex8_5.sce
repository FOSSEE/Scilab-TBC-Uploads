clc

T1=300 //K
T2=310 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Va1=0.60 //V
Va2=0.5827 //V
E=1.12 //eV

//J=exp(-Eg/(k*T))*exp((e*Va)/(k*T))

a=([e*Va2*k*T1]+[e*Va1*k*T2])/((k*T1)-(k*T2))
disp(a)
