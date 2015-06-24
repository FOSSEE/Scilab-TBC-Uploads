V=300
Ea=V
n1=1200
n2=1100
Kaphi=Ea/2/%pi/n1*60

T=350
Ia=T/Kaphi
disp(Ia)
Ea=V*n2/n1
Pm=Ea*Ia
disp(Pm)

Ra=(V-Ea)/Ia
disp(Ra)

disp(T)
Ea=600-Ia*Ra
n=Ea*60/Kaphi/2/%pi
Pm=Ea*Ia
disp(Pm)
disp(n)
