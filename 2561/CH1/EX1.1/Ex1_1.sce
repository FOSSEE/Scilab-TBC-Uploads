//Ex_1.1
//refer to fig 1.2(c) and given d.c operating points VGKQ=-2 V,VAKQ=250 V,IAQ=-1.2 mA
clc
VAK2=300
disp("VAK2 = "+string(VAK2)+" volts") // value of anode voltage2 
VAK1=170
disp("VAK1 = "+string(VAK1)+" volts") // value of anode voltage1 
IA2=2*10^(-3)
disp("IA2 = "+string(IA2)+" ampere") // value of anode current2
IA1=0*10^(-3)
disp("IA1 = "+string(IA1)+" ampere") // value of anode current1
rP=(VAK2-VAK1)/(IA2-IA1)//anode resistance at VGK=VGKQ
disp("resistance,rP =(VAK2-VAK1)/(IA2-IA1)="+string(rP)+" ohm") //calculation
VGK2=-2.5
disp("VGK2 = "+string(VGK2)+" volts") // value of grid voltage2 
VGK3=-1.5
disp("VGK1 = "+string(VGK3)+" volts") // value of grid voltage1
VAK3=200
disp("VAK3 = "+string(VAK3)+" volts") // value of anode voltage1 
u=(VAK2-VAK3)/(VGK2-VGK3)//amplification factor at IA=IAQ
disp("amplification factor,u =(VAK2-VAK1)/(VGK2-VGK1)="+string(u)+" unitless ") //calculation
IA4=2.2*10^(-3)
disp("IA4 = "+string(IA4)+" ampere") // value of anode current4
IA3=0.5*10^(-3)
disp("IA1 = "+string(IA3)+" ampere") // value of anode current1
gm=(IA4-IA3)/(VGK2-VGK3)// transconductance at VAK=VAKQ
disp("transconductance,gm =(IAK4-IAK3)/(VGK2-VGK3)="+string(gm)+" ampere/volt ") //calculation
//mistake of negative sign for answers for u(amplification factor) and gm(transconductance)in book
