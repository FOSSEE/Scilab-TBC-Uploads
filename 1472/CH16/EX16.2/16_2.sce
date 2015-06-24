clc
//initialization of varaibles
e=0.75
Ta=870 //R
Tc=1075//R
cp=0.24
Td=550 //R
//calculations
Tadash=e*(Tc-Ta) +Ta
Tcdash=Tc+Ta-Tadash
Q1=cp*(Tb-Tadash)
Q2=cp*(Tcdash-Td)
Wnet=Q1-Q2
eta=Wnet/Q1
//results
printf("Net work done = %d B/lb",Wnet)
printf("\n efficiency = %.2f ",eta)
