clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
espox=3.9
esp0=8.85*10^-14 
esp=11.7
tox=550*10^-8//550 Armstrong
Na=10^16//cm^-3
ni=1.5*10^10 //cm^-3

Cox=(espox*esp0)/tox
disp(Cox,"oxide capacitance in F/cm^2 is= ")

phi=(k*T)*log(Na/ni)
disp(phi,"mini capacitance in V is= ")

xdt=sqrt((4*esp*esp0*phi)/(e*Na))
disp(xdt,"in cm^-4 is= ")

Cmin=(espox*esp0)/(tox+(espox/esp)*xdt)
disp(Cmin,"in F/cm^2 is =")

a=Cmin/Cox
disp(a,"ratio of Cmin to Cox is= ")

Cfb=(espox*esp0)/(tox+(espox/esp)*sqrt((k*T*esp*esp0)/(e*Na)))
disp(Cfb,"Cfb in F/cm^2 is=")

b=Cfb/Cox
disp(b,"ratio of Cfb to Cox is= ")




