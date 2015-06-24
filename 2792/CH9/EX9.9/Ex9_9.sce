clc
VDS = .1
disp("VDS = "+string(VDS)+"V") //initializing value of saturation voltage
Z = 10*10^-4
disp("Z = "+string(Z)+"cm") //initializing value of channel width
L = 2*10^-4
disp("L = "+string(L)+"cm") //initializing value of channel length
Cox=10^-7
disp("Cox = "+string(Cox)+" F cm^2") //initializing value of oxide capacitance 
ID1= 50
disp("ID1 = "+string(ID1)+"uA") //initializing value of saturation current 1
ID2= 80
disp("ID2 = "+string(ID2)+"uA") //initializing value of saturation current 2
VGS1 = 1.5
disp("VGS1= "+string(VGS1)+"V")//initializing value of gate voltage 1
VGS2 = 2.5
disp("VGS2= "+string(VGS2)+"V")//initializing value of gate voltage 2
mu_n = (((ID2-ID1)*10^(-6)*L)/(VDS*Z*Cox*(VGS2-VGS1)))
disp("The mobility of electron in silicon is ,mu_n = (((ID2-ID1)*L)/(VDS*Z*Cox*(VGS2-VGS1)))= "+string(mu_n)+" cm^2/Vs")//calculation
