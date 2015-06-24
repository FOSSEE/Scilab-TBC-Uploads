
clc
//initialisation of variables
P1=3000//lbf/in^2
P2=200//lbf/in^2
T=492//F
Tr=360/227//F
h1=3.6//Btu/lb mole-R
h2=-29.2//Btu/lbm
Cp=0.248 //Btu/lbm-R
T2=265//F
T1=360//F
Tr2=265/227//f
Pr3=0.406//lbm/in^2
h3=0.7 //Btu/lb mole-R
h4=5.7 //Btu/lbm
//CALCULATIONS
Pr1=(P1/T)//lbf/in^2
Pr2=(P2/T)//lbf/in^2
h=Cp*(T1-T2)//Btu/lbm
H=h2+h+h4//Btu/lbm
//RESULTS
printf('the final temperature of the nitrogen =% f Btu/lbm',H)
