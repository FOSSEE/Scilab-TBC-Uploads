clc
Nd = 5*10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of channel doping
L = 2*10^-4
disp("L = "+string(L)+"cm") //initializing value of channel length
apsilen = 13.2*8.85*10^-14
disp("apsilen = "+string(apsilen)) //initializing value of relative permitivity
VDS1 = 1.0
disp("VDS1 = "+string(VDS1)+"V") //initializing value of drain bias voltage 1
VDS2 = 1.5
disp("VDS2 = "+string(VDS2)+"V") //initializing value of drain bias voltage 2
VGS1 = 0
disp("VGS1 = "+string(VGS1)+"V") //initializing value of gate bias voltage 1
ID=4.03
disp("ID(sat) = "+string(ID)+"mA") //initializing value of saturated current
dL1 = sqrt((2*apsilen*VDS1)/(e*Nd))
disp("The change in channel length is ,dL (VDS(sat)+1 V) = sqrt((2*apsilen*VDS1)/(e*Nd))= "+string(dL1)+"cm")//calculation
dL2 = sqrt((2*apsilen*VDS2)/(e*Nd))
disp("The change in channel length is ,dL (VDS(sat)+1.5 V) = sqrt((2*apsilen*VDS2)/(e*Nd))= "+string(dL2)+"cm")//calculation
ID1 = ID*(1+(dL1/(2*L)))
disp("The current at the bias is ,ID1(VDS(sat)+1 V) = ID*(1+(dL1/(2*L)))= "+string(ID1)+"mA")//calculation
ID2 = ID*(1+(dL2/(2*L)))
disp("The current at the bias is ,ID2(VDS(sat)+1.5 V) = ID*(1+(dL2/(2*L)))= "+string(ID2)+"mA")//calculation
rDS = (VDS2-VDS1)/((ID2-ID1)*10^-3)
disp("The output resistance of source drain channel is ,rDS = (VDS2-VDS1)/(ID2-ID1)= "+string(rDS)+"ohm")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 

