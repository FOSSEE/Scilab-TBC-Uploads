
clc
//initialisation of variables
P1=14.7 //lbf/in^2
P2=80.0 //lbf/in^2
T1=460 //R
T3=520 //R
Cp=0.24 //lbm
T2=T1*(1.624) //R
Wc=Cp*(T2-T1)//Btu/lbm
T3=520 //R
T4=T3/1.624//R
Wt=Cp*(T3-T4)//Btu/lbm
A=200//Btu/lbm 12000 //Btu/lbm
//CALCULATIONS
qH=Cp*(T2-T3)//Btu/lbm
qL=Cp*(T1-T4)//Btu/lbm
Wnet=Wc-Wt//Btu/lbm
Beta=(qL/Wnet)
Beta1=(A/qL)
//RESULTS
printf('Thecoefficient of performance for the cycle =% f',Beta1)
