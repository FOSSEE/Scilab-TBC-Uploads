//Ex2_5
clc
Idc=1*10^(-3)
disp(" D.C load current ,Idc = "+string(Idc)+" ampere") //initialization
Vi=2.5
disp("input voltage,Vi = "+string(Vi)+" volts")//initialization
Vim=Vi*sqrt(2)
VD=0.7
disp("voltage drop,VD = "+string(VD)+ " volts") //initialization
Rm=50
disp("resistance,Rm = "+string(Rm)+ " ohm") //initialization
R=[(2/%pi)*((Vim-2*VD)/Idc)-Rm] //Formulae
disp("resistance,R =[(2/%pi)*((Vim-2*VD)/Idc)-Rm]= "+string(R)+ " ohm")

// NOTE: VALUE OF R=1310 ohm as given in book but here calculated ans is 1309.5231ohm   
