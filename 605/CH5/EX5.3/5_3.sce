
//data
R2=62.5*10^3    //ohm
E=1
L1=320*10^(-9)    //H
L2=20*10^(-9)        //H
//formula and result
printf("\nresult:-")
n=sqrt(E*L1/L2)
printf("\nn=sqrt(E*L1/L2)=%.0f",n)
R1=n^(2)*R2
printf("\nZ1=n^2*Z2\nY1=Y2/n^2=1/n^2*complex(1/R2,W*C2)\n\nR1=n^2*R2=%.0e ohm\n",R1)
C1=(6+1/4^2*30.7)*10^-12
printf("\nC1=%.2e F\n",C1)
Wo=1/sqrt(L1*C1)
printf("\nWo=1/sqrt(L1*C1)=%.4e rad/s\n",Wo)
fo=Wo/(2*%pi)
printf("\nfo=Wo/(2*pi)=%.2e Hz\n",fo)
Q=R1/(Wo*L1)
printf("\nQ=R1/(Wo*L1)=%.4f",Q)