clc
//initialization of variables
P1=25 //lb/in^2
T1=840+460 //R
P2=14.7 //lb/in^2
//calculations
disp("from table 6 of appendix")
ht1=316.94
Prt1=32.39
Pratio=P1/P2
Pr2=Prt1/Pratio
h2=272.4
V2=sqrt(2*32.2*778*(ht1-h2))
//results
printf("Nozzle exit velocity = %d ft/sec",V2)
