clc
clear
//Initialization of variables
P1=200 //psia
T1=600 //F
P2=2 //psia
J=778
//calculations
disp("from mollier charts,")
h1=1322 //Btu/lb
h2=974 //Btu/lb
vf2=0.01623 //cu ft per lb
hf2=94 //Btu/lb
t2=126 //F
Wtj=h1-h2
Qout=h2-hf2
Wp=(P1-P2)*vf2
Wpj=Wp/J
h3=hf2+Wpj
Qin=h1-h3
etat=((h1-h2)-Wpj)/(h1-(hf2+Wpj))
eta=((h1-h2))/(h1-(hf2))
//results
printf("Efficiency of rankine cycle = %.1f percent",etat*100)
printf("\n Efficiency of rankine cycle neglecting boiler feed pump = %.1f percent",eta*100)
