clc
//Chapter6
//Ex_3
//Given
//part(a)
//let K=k*T/e
K=0.0259 // in V
Te=5*10^-9 // in s
Th=417*10^-9 // in s
ue=120 //in cm2/V/s
uh=440 //in cm2/V/s
Na=5*10^18 // in cm^-3
Nd=10^16 //in cm^-3
T1=300 //in kelvin
T2=373 //in kelvin
Tg=10^-6 //in seconds
Vr=5 //in volts
ni_300=1.45*10^10 //in cm^-3 at 300K
ni_373=1.2*10^12 //in cm^-3 at 373K
A=0.01 //in cm2
e=1.6*10^-19 // in coulombs
epsilon_o=8.85*10^-12 //in F/m
epsilon_r=11.9
V=0.6 //in v
//De=k*T*ue/e
De=K*ue
Dh=K*uh
Le=sqrt(De*Te)
Lh=sqrt(Dh*Th)
disp(Le,"Diffusion length of electrons in cm is")
disp(Lh,"Diffusion length of holes in cm is")
//part(b)
//Vo=(k*T/e)*log(Nd*Na/ni^2)
Vo=K*log(Nd*Na/ni_300^2)
disp(Vo,"Built-in potential in volts is")
//part(C)
Iso_300=A*e*ni_300^2*Dh/(Lh*Nd)
//I=Iso*exp(eV/kT)
I=Iso_300*exp(V/K)
disp(I,"Current when there is a forward bias of 0.6 V at 300K in Amperes is")
//part(d)
Iso_373=Iso_300*(ni_373/ni_300)^2
I=Iso_373*exp((V/K)*(T1/T2))
disp(I,"Current when there is a forward bias of 0.6 V at 373K in Amperes is")
//part(e)
Nd=Nd*10^6 //in m^-3
epsilon=epsilon_o*epsilon_r
W=sqrt(2*epsilon*(Vo+Vr)/(e*Nd))
W=W*10^2 //in cm
ni=1.45*10^10 //in cm^-3
I_gen=e*A*W*ni/Tg
disp(I_gen,"Thermal generation current in Amperes is")
