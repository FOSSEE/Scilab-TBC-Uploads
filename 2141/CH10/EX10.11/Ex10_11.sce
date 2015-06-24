

clc
//initialisation of variables
clear
P=1000//lbf/in^2
P1=100//lbf/in^2
T=200//F
T1=260//F
Pr=P/492//lbf/in^2
Pr2=P1/492//Lbf/in^2
Tr1=T1/227.1//F
Tr2=T/227.1//F
h4=28.0//Btu/lb mole
h=4.85//Btu/lb mole
h1=41.0//Btu/lbm
h2=0.7 //Btu/lb mole
h3=5.7 //Btu/lbm
Cp=0.248 //Btu/lbm-R
Cpo=6.69//Btu/lbm-R
Q=109.93-85.54//Btu/lbm
s1=3.35//Btu/lb mole-R
s2=0.65 //Btu/lb mole-R
s3=0.6585//Btu/lb mole
s4=0.4419 //Btu/lb mole
R=1.986//T
//CALCULATIONS
h4=Cp*(T-T1)//Btu/lbm
q=-h3+Q+h1//Btu/lbm
S=Cpo*log(T/T1)-R*log(P1/P)//Btu/lb mole-R
S1=-s2+S+s1//Btu/lb mole-R
S2=s3-s4//Btu/lbm-R
//RESULTS
printf('the heat transfer and the change of entropy =% f btu/lbm-R',S2)
