
Wo=2*%pi*2*10^6
Wf=2*%pi*2.5*10^6
Ko=10^7
Ka=10
Kd=0.5
N=20
E=0.8
Wn=10^4
C2=0.5*10^-6
Vd=(Wo-Wf)/Ko
Ve=Vd/Ka
Qe=Ve/Kd
K=Kd*Ka*Ko/N
dW=sqrt(2*(2*E*Wn*K-Wn^2))
df=dW/(2*%pi)
T1=K/Wn^2
T2=2*E/Wn-1/K
R2=T2/C2
R1=T1/C2-R2
printf("\nVd=%.4f V\nVe=%.4f V\nQe=%.4f rad\nK=%.2e\ndW=%.4e rad/s\ndf=%.4e Hz\nT1=%.4f s\nT2=%.4e s\nR2=%.2f ohm\nR1=%.3f ohm",Vd,Ve,Qe,K,dW,df,T1,T2,R2,R1)



