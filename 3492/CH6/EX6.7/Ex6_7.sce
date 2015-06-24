clc
//Chapter6
//Ex_7
//Given
//part(a)
Th=250*10^-9 //in seconds
A=0.02*10^-2 //in cm2
Av=10 //voltage gain
ni=1.45*10^10 //in cm^-3
Nd=2*10^16 //in cm^-3
W_B=2*10^-4 //in cm
uh=410 //in cm2/V/s
I_E=2.5*10^-3 //in Amperes
//let K=kT/e
K=0.0259 //in V
//Dh=(kT/e)*uh
Dh=K*uh
Tt=W_B^2/(2*Dh)
e=1.6*10^-19 // in coulombs
alpha=1-(Tt/Th)
disp(alpha,"CB current transfer ratio is")
funcprot(0)
beta=alpha/(1-alpha)
disp(beta,"current gain is")
//part(c)
I_EO=e*A*Dh*ni^2/(Nd*W_B)
//V_EB=(k*T/e)*log(I_E/I_EO)
V_EB=(K)*log(I_E/I_EO)
disp(V_EB,"V_EB in volts is")
//re=(k*T/e)/IE=25/IE(mA)
I_E=2.5 //in mA
re=25/I_E
disp(re,"small signal input resistance in ohms is")
//part(d)
R_C=Av*re
disp(R_C,"R_C in ohms is")
//part(e)
I_E=2.5*10^-3 //in Amperes
I_B=I_E*(1-alpha)
disp(I_B*10^6,"base current in micro amperes is")
//part(f)
f=1/Tt
disp(f*10^-6,"upper frequency range limit in MHz is")
