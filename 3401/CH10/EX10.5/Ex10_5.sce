clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
NB=5*10^16//cm^-3
NC=2*10^15//cm^-3
epsilons=11.7
eps=8.85*10^-14 //V
ni=1.5*10**10 //cm^-3
x=0.70*10^-6
a=9.96*10^-12///solving the equation
Vbi=((k*T))*log((NB*NC)/ni^2)
disp(Vbi,"Vbi in V is=")

//for 
VCB=2 //V
xdB1=sqrt(a*(Vbi+VCB))
disp(xdB1,"xdB in meter is=")
xB1=x-xdB1
disp(xB1,"xB in meter is=")//        textbook ans are wrong

//for 
VCB=10 //V
xdB2=sqrt(a*(Vbi+VCB))
disp(xdB2,"xdB in meter is=")
xB2=x-xdB2
disp(xB2,"xB in meter is=")//        textbook ans are wrong

