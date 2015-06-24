
clc
//initialisation of variables
T=1.563//R
T1=520//R
nc=0.80
T3=367//R
Cp=0.24
t=2060//R
P3=68//lbf/in^2
nt=0.85
//CALCULATIONS
Wc=Cp*(T4-T1)//Btu/lbm
T2=T*T1//R
T4=T1+T3//R
T4s=t/T//R
T6=nt*(t-T4s)//R
T7=t-T6//R
Wt=Cp*(t-T7)//Btu/lbm
Wnet=Wt-Wc//Btu/lbm
qH=Cp*(t-T4)//Btu/lbm
Nth=(Wnet/qH)*100//per cent
//RESULTS
printf('The compressor work turbine work and cycle efficiency =% f per cent',Nth)
