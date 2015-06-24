
clc
//initialisation of variables
hi=1306.9 //lbm
si=1.5894//lbm
x=0.077 //lbm
n=0.7 //lbm\
T0=537 //F
Te=586//F
se=0.1897 //Btu/lbm
hes=1116.2-se*(1022.2)//Btu/lbm
Ws=hi-hes//Btu/lbm
Wa=n*Ws//Btu/lbm
he=hi-Wa //Btu/lbm
S=1.9200 //Btu/lbm
//CALCULATIONS
Se=S-x*(1.7451)//Btu/lbm
Wrev=(hi-he)-T0*(si-Se)//Btu/lbm
I=Wrev-Wa //Btu/lbm
M=T0*(Se-si)-0//Btu/lbm
WS=hi-hes//Btu/lbm
Wc=(Te-T0)*(Se-si)//Btu/lbm
Wrev=WS-Wc//Btu/lbm
//RESULTS
printf('The work input to this heat pump per unit mass flow=% f Btu/lbm',Wrev)
