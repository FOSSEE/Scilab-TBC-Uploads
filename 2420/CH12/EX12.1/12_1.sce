clc
clear
//Initialization of variables
T1=80 //F
T2=460 //F
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
eta=(wtur-wcom)/wcob *100
//results
printf("\n work done by compressor = %.1f btu input as work per lb of air compressed",wcom)
printf("\n Heat supplied in the combustor = %.1f Btu supplied per lb of air ",wcob)
printf("\n work done in the turbine = %.1f Btu output as work per lb of air",wtur)
printf("\n Cycle efficiency = %.1f percent",eta)
