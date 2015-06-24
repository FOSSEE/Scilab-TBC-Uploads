
clc
//initialisation of variables
P1=14.7 //lbf/in^2
T1=520 //R
a=15 //lbm
v1=(53.34*T1)/(P1*144) //ft^3/lbm
V2=2.955
P=44.2 //lbm
qH=800//Btu/lbm
Cp=0.24
Cv=0.171//lbm
T3=3333//R
V3=3.17
T5=1.860 //R
g=144//ft
T=778//F
//CALCULATIONS
v2=v1/a//ft^3/lbm
T2=(V2*T1)//lbf/in^2
P2=P*P1//lbf/in^2
V4=V3*V2//ft3/lbm
T4=T3+T2//R
T6=T4/T5//R
qL=Cv*(T1-T6)//Btu/lbm
Wnet=qH+qL//Btu/lbm
Nth=Wnet/qH//lbf/in^2
mep=(Wnet*T)/((v1-v2)*g)//lbf/in^2
//RESULTS
printf('The pressure and temperature at each point in the cycle=% flbf/in^2',mep)
