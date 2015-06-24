//Ex3_1
clc
Vcc=15
disp("Vcc = "+string(Vcc)+" volts")   //initialization
VBB=1
disp("VBB = "+string(VBB)+" volts")  //initialization
VBE=0.7
disp("VBE = "+string(VBE)+" volts")  //initialization
RB=5*(10^3)
disp("resistance,RB = "+string(RB)+ " ohm")  //initialization
RL=650
disp("resistance,RL = "+string(RL)+ " ohm")  //initialization
Bf=200
disp("Gain,Bf = "+string(Bf)+ " ")  //initialization
IB=(VBB-VBE)/RB //Formulae
disp("IB =(VBB-VBE)/RB = "+string(IB)+" ampere") //calculation
IC=IB*Bf  //Formulae
disp("IC =IB*Bf= "+string(IC)+" ampere")//calculation
IE=IB+IC  //Formulae
disp("IE = IB+IC="+string(IE)+" ampere")//calculation
VCE=Vcc-IC*RL //Formulae
disp("VCE =Vcc-IC*RL= "+string(VCE)+" volts") //calculation
VCB=VCE-VBE  //Formulae
disp("VCB = VCE-VBE="+string(VCB)+" volts")//calculation
RB=(Vcc-VBE)/IB  //Formulae
disp("resistance,RB =(Vcc-VBE)/IB= "+string(RB)+ " ohm") //calculation
