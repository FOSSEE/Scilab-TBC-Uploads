
clc
//initialisation of variables
P1=15//lbf/in^2
P=14.7//lbf/in^2
T1=90//F
T2=60//F
Fhi=0.80//percent
Fhi1=0.95//percent
pg1=0.6982//lbm
pg2=0.2563//lbm
v1=0.240//lbm
v2=1088.0//lbm
v3=1100.9//lbm
g=28.06//lbm
//CALCULATIONS
p=Fhi*pg1//lbf/in^2
umga=0.622*(p/(15.00-0.56))//lbf/in^2
p1=Fhi1*pg2//lbf/in^2
umga2=0.622*(p1/(14.80-0.24))//lbf/in^2
Q=v1*(T2-T1)+(umga2*v2)-(umga*v3)+(umga-umga2)*g//Btu/lbm dry air 
//RESULTS
printf('The heat transfer per pound of dry air=% f Btu/lbm dry air',Q)
