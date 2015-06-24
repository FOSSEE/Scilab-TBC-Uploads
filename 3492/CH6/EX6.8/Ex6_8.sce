clc
//Chapter6
//Ex_8
//Given
//part(c)
Nd=2*10^16 //in cm^-3
Na=10^19 //in cm^-3
W_B=2*10^-4 //in cm
W_E=2*10^-4 //in cm
ue=110 //in cm2/V/s
uh=410 //in cm2/V/s
Th=250*10^-9 //in seconds
//let K=kT/e
K=0.0259 //in V
//Dh=(kT/e)*uh
Dh=K*uh
Tt=W_B^2/(2*Dh)
gamma=1/(1+((Nd*W_B*ue)/(Na*W_E*uh)))
disp(gamma,"Injection frequency is")
alpha=gamma*(1-(Tt/Th))
disp(alpha,"Modified alpha is")
beta=alpha/(1-alpha)
disp(beta,"modified current gain is")
