clc
K_dash = 25*10^-6
disp("K_dash = "+string(K_dash)+"A/V^2") 
VT = 1
disp("VT = "+string(VT)+"V") 
VDD = 5
disp("VDD = "+string(VDD)+"V") //initialising value of drain voltage
VOL= 0.24
disp("VOL = "+string(VOL)+"V") //initialising value of output load voltage
RL = 10^5
disp("RL = "+string(RL)+"ohm") //initialising value of  load resistance
VGS = 4.7
disp("VGS = "+string(VGS)+"V") //initialising value of  gate and source voltage
KL = (2*((VDD-VOL)/RL))/(VGS-VT)^2
disp("The parameter of load transistor is ,KL = (2*((VDD-VOL)/RL))/(VGS-VT)^2 = "+string(KL)+" A/V^2")//calculation
Z_by_L = KL/K_dash
disp("Z_by_L = KL/K_dash= "+string(Z_by_L))//calculation
//NOTE: let 
L = 10*10^-6
disp("L = "+string(L)+"m") //initialising value of length of transistor
Z = Z_by_L*L
disp("the width of transistor is Z = Z_by_L*L= "+string(Z)+"m")//calculation
//NOTE: let 
Z_by_L = 2
L1 = 3*10^-6
disp("L1 = "+string(L1)+"m") //initialising value of length of transistor
Z1 = Z_by_L*L1
disp("the width of transistor is Z1 = Z_by_L*L1= "+string(Z1)+"m")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ and author also takes the approximate values 
