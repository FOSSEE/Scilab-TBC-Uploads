clc
clear
//Initialization of variables
T1=80 //F
T2=460 //F
T=700 //F
T3=1300 //F
T4=780 //F
//calculations
disp("from mollier charts,")
h1=129.1 //Btu/lb
h2 = 221.2 //Btu/lb
h3= 438.8 //Btu/lb
h4 = 301.5 //Btu/lb
wcom=h2-h1
wcob=h3-h2
wtur=h3-h4
output=-wcom+wtur
h=281.1 //Btu/lb
Q=h3-h
eff=output/Q *100
//results
printf("\n Heat supplied in the combustor = %.1f Btu supplied per lb of air ",Q)
printf("\n Cycle efficiency = %.1f percent",eff)
