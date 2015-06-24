
//calculate the circuit current
u=1//for air gap
F=1.5e-3//flux
A=9e-4 //area 
B=F/A
H=B/(4*3.14*10^-7*u)
l=4e-3//air gap
S=H*l//amps turns in air gap
l=4e-3//air gap
u1=800// for iron gap
A1=750e-6
B1=F/A1
H1=B1/(4*3.14*10^-7*u1)
l1=270e-3
S1=H1*l1
u2=1000//for P,Q,R
H2=B/(4*3.14*10^-7*u2)
Ip=135e-3
Iq=270e-3
Ir=135e-3
S2=H2*(Ip+Iq+Ir)//amps turns
TNn=S+S1+S2
TN=4000
EI=TNn/TN
disp('exciting current=   '+string(EI)+'  amps' )
