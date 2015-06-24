
//data
Lp=10^(-5)    //H
Cp=10^(-11)    //F
Rp=10^5           //ohm
RL=10^5             //ohm
//formula and result
printf("\nresult:-")
Wo=1/sqrt(Lp*Cp)
printf("\nWo=1/sqrt(Lp*Cp)=%.0e rad/s",Wo)
Q=Rp/(Wo*Lp)
printf("\nQ=Rp/(Wo*Lp)=%.0f",Q)
Qe=RL/(Wo*Lp)
printf("\nQe=RL/(Wo*Lp)=%.0f",Qe)
QL=Q*Qe/(Q+Qe)
printf("\nQL=Q*Qe/(Q+Qe)=%.0f",QL)