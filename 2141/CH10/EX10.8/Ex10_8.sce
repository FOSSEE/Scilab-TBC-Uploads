
clc
//initialisation of variables
Tc=666//R
Pc=617//lbf/in^2
R=35.1//ft-lbf/lbm-R
Tr=760/Tc//F
T=760//F
T1=617 //F
P=1000//lbf/in^2
Pr=P/T1 //lbf/in^2
Z=0.54 //R
p=Pr*T1//lbf/in^2
g=144//ft
//CALCULATIONS
Pv=(Z*R*T)/(P*g)//ft^3/lbm
v=(R*T)/(P*g)//ft^3/lbm
Tr1=(P*g*Pv)/(R*Tc)//lbf/in^2
T1=Tr*Tc//R
//RESULTS
printf('the specific volume by ideal gas equation of state=% f R',Tr1)
