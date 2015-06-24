//Ex2_4
clc
Vi=10
disp("input voltage,Vi = "+string(Vi)+" volts")  //initialization
Rs=0.2
disp("resistance,Rs = "+string(Rs)+ "ohm")  //initialization
RL=10
disp("resistance,RL = "+string(RL)+ "ohm")  //initialization
VD=0.7
disp("input voltage,VD = "+string(VD)+" volts")  //initialization
Vim=Vi*sqrt(2)  //Formulae
Iim=(Vim-VD)/(RL+Rs)  //Formulae
disp(" Peak load current ,Iim =(Vim-VD)/(RL+Rs) ="+string(Iim)+" ampere") // calculation
Ildc=(2*Iim/(%pi))  //Formulae
disp(" D.C load current ,Ildc =(2*Iim/(%pi)) ="+string(Ildc)+" ampere") // calculation
Iadc=(Ildc/2)  //Formulae
disp(" diode d.c current ,Iadc =(Ildc/2)= "+string(Iadc)+" ampere") // calculation
PIV=2*Vim  //Formulae
disp("peak inverse voltage ,PIV = 2*Vim="+string(PIV)+" volts") // calculation
Vldc=Ildc*RL  //Formulae
disp("D.C output voltage,Vldc=Ildc*RL= "+string(Vldc)+" volts") // calculation

