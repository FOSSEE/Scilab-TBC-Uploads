
N=1500//speed in rpm
E1=300//hysteresis losses
//E1=k1*N
k1=E1/N
E2=150//eddy current losses
//E2=k2*N^2
k2=E2/N^2
E=E1+E2//total iron losses
//when iron losses are reduced to half
//k1*N1+k2*N1^2=.5*E
//solving for N1
N1=(-k1+sqrt(k1^2-4*k2*(-.5*E)))/(2*k2)
mprintf("Total iron losses will be halved if speed is reduced to %d rpm", round(N1))

