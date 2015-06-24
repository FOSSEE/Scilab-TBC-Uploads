
clc
//initialisation of variables
P1=14.7 //lbf/in^2
T1=520//R
T3=2060//R
P2=70//lbf/in^2
T=1.563 //lbf/in^2
Cp=0.24
s=0.286
//CALCULATIONS
T2=T*T1//R
Wc=Cp*(T2-T1)//Btu/lbm
T4=T3/T//R
Wt=Cp*(T3-T4)//Btu/lbm
Wnet=Wt-Wc//Btu/lbm
qH=Cp*(T3-T2)//Btu/lbm
qL=Cp*(T4-T1)//Btu/lbm
Nth=(Wnet/qH)*100//per cent
nth=(1-1/(P2/P1)^s)*100//per cent
//RESULTS
printf('The compressor Work Turbine work and cycle efficiency=% f per cent',nth)
