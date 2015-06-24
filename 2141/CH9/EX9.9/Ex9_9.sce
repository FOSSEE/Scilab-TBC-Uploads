
clc
//initialisation of variables
T1=520 //R
P1=14.7 //lbf/in^2
v1=(53.34*T1)/(P1*144)//ft^3/lbm
T=2.3 //lbf
T2=T*T1//R
P2=18.4*(P1)//lbf/in^2
v2=v1/8 //ft^3/lbm
Q=800 //Btu/lbm
T3=Q/0.171 //R
T4=T2+T3//R
T5=4.92 //R
T6=T5*P2//lbf/in^2
t=T4/T//R
p=18.4 //lbf/in^2
p1=T6/p//lbf/in^2
nth=0.565 //btu/lbm
Cv=0.171 //Btu
g=144//ft
T=778//f
//CALCULATIONS
Q1=Cv*(T1-t)//Btu/lbm
Nth=1-(-Q1/Q)//Btu/lbm
Wnet=Q+Q1 //Btu/lbm
Mep=(Wnet*T)/((v1-v2)*g)//lbf/in^2
//RESULTS
printf('The pressure and thermal efficiency and the mean efficiency pressure=% f lbf/in^2',Mep)
