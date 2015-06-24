clear
clc
Tb=353.25;//temperature of benzene in K
Tt=383.75;//temperature of toluene in K
T=368.15;//temperature in K
DelS_vR=-10.6;//
Xb=((exp(DelS_vR))-(exp((DelS_vR)*(Tt/T))))/((exp((DelS_vR)*(Tb/T)))-(exp((DelS_vR)*(Tt/T))));//mole fraction of benzene
printf('Xb=%.4f',Xb)
Xt=(1-Xb);//mole fraction of benzene
printf('\nXt=%.4f',Xt)
Yb=Xb*(exp((-DelS_vR)*(1-(Tb/T))));//
printf('\nYb=%.4f',Yb)
Yt=1-Yb;//
printf('\nYt=%.4f',Yt)

//There are minor errors in solution in textbook
//page 151
