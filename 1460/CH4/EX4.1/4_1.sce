clc
//Initialization of variables
m=0.5 //lbm/sec
Pi=14 //lb/in^2
SVi=13 //ft^3/lbm
Vi=100 //ft/sec
P=75.5 //hp
Hr=8.65 //zB/sec
Pd=150 //lb/in^2
SVd=2.1 //ft^3/lb
Vd=200 //ft/sec
z1=3 //ft
z2=10 //ft
//calculations
WbyJ=P*550/(m*778)
Q=Hr/m
Wi=144*Pi*SVi/(778)
Wo=144*Pd*SVd/(778)
PEi=z1/778
PEf=z2/778
KEi=Vi^2 /(2*32.2*778)
KEf=Vd^2 /(2*32.2*778)
du=-Q+WbyJ+PEi-PEf+KEi-KEf+Wi-Wo
//results
printf("Increase in internal energy = %.1f B/lbm",du)
