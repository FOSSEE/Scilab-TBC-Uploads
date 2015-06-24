clc
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
Wb = 0.4*10^-4
disp("Wb= "+string(Wb)+"cm")//initializing value of base width
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
IE = 1.5*10^-3
disp("IE= "+string(IE)+"A")//initializing value of Emitter current current
Db = 60
disp("Db= "+string(Db)+"cm^2/s")//initializing value of diffusion coefficient in the base
Wdc = 2*10^-4
disp("Wdc= "+string(Wdc)+"cm")//initializing value of width ofc ollector depletion region 
Cje = 2*10^-12
disp("Cje= "+string(Cje)+"F")//initializing value of emitter base junction
rC = 30
disp("rC= "+string(rC)+"ohm")//initializing value of collector resistance
TcC = .4*10^-12
disp("TcC= "+string(TcC)+"F")//initializing value of Total collector capicitance represented in book as(Cu+Cs)
//NOTE:Total collector capicitance represented in book as(Cu+Cs)
vs = 10^7
disp("vs= "+string(vs)+"cm/s")//initializing value of velocity
disp("the emitter resistance of a forward biased diode is re = (dIE/dVBE) = ((kbT)/(e*IE))")
re = kbT/IE
disp("The emitter resistance is,re = kbT/IE= "+string(re)+"ohm")//calculation
Te = re*Cje
disp("The emitter transit time is,Te = re*Cje = "+string(Te)+"s")//calculation
Tt = (Wb^2)/(2*Db)
disp("The base transit time is,Tt = (Wb^2)/(2*Db)= "+string(Tt)+"s")//calculation
Td = (Wdc)/vs
disp("The collector transit time is,Tt = (Wdc)/vs= "+string(Td)+"s")//calculation
Tc = rC*TcC
disp("The collector charging time is,Tc = rC*TcC = "+string(Tc)+"s")//calculation
Tec = Te+Tt+Td+Tc
disp("The total time is,Tec = Te+Tt+Td+Tc = "+string(Tec)+"s")//calculation
fT = 1/(2*%pi*Tec)
disp("The cutoff frequency is,fT = 1/(2*%pi*Tec) = "+string(fT)+" Hz")//calculation
disp("if the emitter current is doubled the time is reduced by half and cutoff frequency becomes 2.54 GHz")
disp("if the base width is reduced by half , the base transit time becomes 3.3 ps and cutoff frequency becomes 2.08 GHz")

