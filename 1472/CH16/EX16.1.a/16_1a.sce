clc
//initialization of varaibles
Pb=75 //psia
Pc=15 //psia
k=1.4
Td=550 //R
Tb=1700  //R
cp=0.24
//calculations
disp("Gas law solution")
Pratio=Pb/Pc
Ta=Td*(Pratio)^((k-1)/k)
Tc=Tb/(Pratio)^((k-1)/k)
Q1=cp*(Tb-Ta)
Q2=cp*(Tc-Td)
Wnet=Q1-Q2
eta=Wnet/Q1
eta2=1-Td/Ta
//results
printf("Efficiency in 1= %.3f",eta)
printf("\n Efficiency in 2 = %.2f",eta2)
printf("\n Work per pound of fluid = %d B/lb",Wnet)
