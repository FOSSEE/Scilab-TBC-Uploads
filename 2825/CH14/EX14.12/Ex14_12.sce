//Ex14_12 Pg-699
clc

L=10 //length of fiber in km
alpha=2.5 //loss in the fiber per km
Pin=500*10^(-6) //input power in watt

tot_alpha=-1*alpha*L //total loss in the fiber
Pout=Pin*10^(tot_alpha/10) //output power in watt
printf("Output power = %.2f uW",Pout*1e6)
