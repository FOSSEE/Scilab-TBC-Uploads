
clc
//initialisation of variables
T=2000 //F
T1=1000//F
T2=300//F
T3=500//F
s1=0.4369
s2=1.7085
p1=100 //lbf/in^2
T0=537 //F
M=1009.5
h=0.26
Me=M/(h*(T-T1))
h1=269.6//lbf/in^2
h2=1279.1//lbf/in^2
p=2460/1460//lbf/in^2
//CALCULATIONS
We=(h1-h2)-T0*(0.4369-1.7085)//Btu/lbm
Wre=Me*(h*(T-T1)-T0*(h*log(p)))//Btu/lbm H2O
Wrev=Wre+We//Btu/lbm H20
W=Wrev //Btu/lbm H2O
S=(s2-s1)//Btu/lbm H2O-R
S4=-Me*h*log(p)//Btu/lbm H2O-R
I=T0*S+T0*S4//Btu/lbm H2O
//RESULTS
printf('The work and the irreversibility for this process per pound of water =% fBtu/lbm H2O ',I)
